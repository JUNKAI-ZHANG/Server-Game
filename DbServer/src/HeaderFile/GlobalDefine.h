#ifndef CONST_DEFINE_H
#define CONST_DEFINE_H

#include <map>
#include <queue>
#include <chrono> 
#include <string>
#include <stdio.h>
#include <errno.h>
#include <stdarg.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>         /* for nonblocking */
#include <signal.h>
#include <stdlib.h>
#include <strings.h>        /* for convenience */
#include <sys/epoll.h>
#include <sys/socket.h>    /* basic socket definitions */
#include <netinet/in.h>    /* sockaddr_in{} and other Internet defns */
#include <arpa/inet.h>

#include "./RingBuffers.h"
#include "./MyHeader.h"
#include "../Protobuf/MessageProto.pb.h"

#define HEAD_SIZE           4
#define OFFSET              16
#define TMP_BUFFER_SIZE     2048
#define MAX_BUFFER_SIZE     131072

#define USER_LOGIN_INFO     1
#define USER_POSITION_INFO  2
#define USER_DROP_INFO      3

#define FROM_CLIENT         1 
#define FROM_GATESERVER     2 
#define FROM_GAMESERVER     3 
#define FROM_DBSERVER       4 

#endif

extern int NowUserId;
extern int serverFrameCount;

extern std::map<int, int> UserId;
extern std::map<int, int> rev_UserId;
extern std::map<int, int> UserDir;
extern std::map<int, RingBuffer> clientBuffers;
