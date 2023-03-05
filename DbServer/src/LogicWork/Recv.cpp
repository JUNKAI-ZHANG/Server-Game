#include <thread>

#include "../HeaderFile/GlobalDefine.h"

#define MAXEVENTS       64
#define LISTENQ         1024
#define SERV_PORT       8080

std::map<int, RingBuffer> clientBuffers;
uint8_t tmpBuffer[TMP_BUFFER_SIZE];

int serverFrameCount = 0;

// ----------- 处理客户端粘包 --------------

void DestoryClient(int client_socket_fd)
{
	if (clientBuffers.count(client_socket_fd))
	{
		clientBuffers.erase(client_socket_fd);
	}
}

void ConstructClient(int client_socket_fd)
{
	if (!clientBuffers.count(client_socket_fd))
	{
		RingBuffer * rb = new RingBuffer();
		clientBuffers[client_socket_fd] = *rb;
	}
}
//==========================================

void make_nonblocking(int fd)
{
	fcntl(fd, F_SETFL, O_NONBLOCK);
}

void error(int status, int err, const char *const fmt, ...)
{
	va_list ap;
	va_start(ap, fmt);
	vfprintf(stderr, fmt, ap);
	va_end(ap);

	if (err)
	{
		fprintf(stderr, ": %s (%d)\n", strerror(err), err);
	}
	if (status)
	{
		exit(status);
	}
}

int tcp_nonblocking_server_listen(int port)
{
	int listen_fd = socket(PF_INET, SOCK_STREAM, 0);
	// SOCK_STREAM : TCP
	// SOCK_DRGAM  : UDP
	make_nonblocking(listen_fd);

	struct sockaddr_in server_addr;
	bzero(&server_addr, sizeof(server_addr));

	server_addr.sin_family = AF_INET;
	server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	server_addr.sin_port = htons(port);

	int rt1 = bind(listen_fd, (struct sockaddr *)&server_addr, sizeof(server_addr));
	if (rt1 < 0)
	{
		error(1, errno, "bind failed");
	}

	int rt2 = listen(listen_fd, LISTENQ);
	if (rt2 < 0)
	{
		error(1, errno, "listen failed");
	}

	signal(SIGPIPE, SIG_IGN);

	return listen_fd;
}

int StartEpollListen() {

	int listen_fd = tcp_nonblocking_server_listen(SERV_PORT);

	struct epoll_event event;
	struct epoll_event *events = (epoll_event *)calloc(MAXEVENTS, sizeof(event));

	// Create epoll instance
	int efd = epoll_create1(0);
	if (efd < 0)
	{
		error(1, errno, "epoll create failed");
	}

	// 将监听 fd 放入 epoll 中
	event.data.fd = listen_fd;
	// 设置可读、边沿触发
	event.events = EPOLLIN;
	printf("Server Open Success\n");
	if (epoll_ctl(efd, EPOLL_CTL_ADD, listen_fd, &event) == -1)
	{
		error(1, errno, "epoll_ctl add listen fd failed");
	}
	int connectNumber = 0;
	while (1)
	{
		// 阻塞读 event 事件
		int n = epoll_wait(efd, events, MAXEVENTS, -1);
		printf("epoll_wait wakeup\n");
		for (int i = 0; i < n; i++)
		{
			if ((events[i].events & EPOLLERR) || (events[i].events & EPOLLHUP) || !(events[i].events & EPOLLIN))
			{
				fprintf(stderr, "epoll error\n");
				// Player Drop
				DestoryClient(events[i].data.fd);
				close(events[i].data.fd);
				continue;
			}
			else if (listen_fd == events[i].data.fd)
			{
				struct sockaddr_in ss;
				socklen_t slen = sizeof(ss);
				int fd = accept(listen_fd, (struct sockaddr *)&ss, &slen);
				if (fd < 0)
				{
					error(1, errno, "accept failed");
				}
				else
				{
					make_nonblocking(fd);

					event.data.fd = fd;
					event.events = EPOLLIN;

					if (epoll_ctl(efd, EPOLL_CTL_ADD, fd, &event) == -1)
					{
						DestoryClient(fd);
						close(fd);
						error(1, errno, "epoll_ctl add Connection fd failed");
					}
					else
					{
						ConstructClient(fd);
					}
				}
			}
			else
			{
				ssize_t tmp_received = 0;

				int socket_fd = events[i].data.fd;

				// ------------New Version--------------
				auto & iter = clientBuffers[socket_fd];

				int sz = 0;

				while ((sz = recv(socket_fd, tmpBuffer + tmp_received, MAX_BUFFER_SIZE - tmp_received, MSG_DONTWAIT)) > 0)
				{
					tmp_received += sz;
					if (tmp_received <= iter.GetRemain()) 
					{
						iter.AddBuffer(tmpBuffer, tmp_received);
						tmp_received = 0;
					}
					else
					{
						tmp_received -= iter.GetRemain();
						iter.AddBuffer(tmpBuffer, iter.GetRemain());
					}

					bool flag_header = false, flag_body = false;
					do
					{
						flag_header = false, flag_body = false;
						int tail = 0, bodyLength = 0, body_size = 0, body_type = -1;

						// get header and body length
						if (body_size <= 0 && iter.GetCapacity() >= HEAD_SIZE)
						{
							// header.ParseFromArray(clientBuffers[socket_fd].first, HEAD_SIZE);
							bodyLength = ByteToInt(iter.GetBuffer(HEAD_SIZE));

							body_type = bodyLength >> OFFSET;
							body_size = bodyLength & ((1 << OFFSET) - 1);

							flag_header = true;
						}

						if (body_size > 0 && iter.GetCapacity() >= body_size + HEAD_SIZE)
						{
							std::cout << "Received " << iter.GetCapacity() << " bytes from client" << std::endl;
							std::cout << "Complete Package Size = " << body_size + HEAD_SIZE << std::endl;

							flag_body = true;
						}

						// Success get header and body
						if (flag_header && flag_body)
						{
							// Dynamic analysis type of proto
							// AutoAnalysis(socket_fd, iter.GetBuffer(HEAD_SIZE + body_size), body_size, body_type);
							// AutoAnalysis(socket_fd, iter.GetBuffer(HEAD_SIZE + body_size), body_size, body_type);
							// Remember Popbuffer
							iter.PopBuffer(HEAD_SIZE + body_size);
							// Reset
							body_size = 0;
						}

					} while (flag_header && flag_body);
				}

				if (tmp_received < 0)
				{
					if (errno == EAGAIN || errno == EWOULDBLOCK)
					{
						std::cout << "data read over" << std::endl;
					}
					else
					{
						std::cerr << "Failed to read from connection" << std::endl;
						DestoryClient(socket_fd);
						close(events[i].data.fd);
						continue;
					}
				}
			}
		}
	}

	free(events);
	close(listen_fd);
	return 0;
}
