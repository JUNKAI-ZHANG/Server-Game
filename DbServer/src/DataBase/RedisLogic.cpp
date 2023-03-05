#include <hiredis/hiredis.h>

#include "../HeaderFile/GlobalDefine.h"
#include "../HeaderFile/MyHeader.h"

int RedisOperation()
{
    // 连接 Redis 服务器
    redisContext *context = redisConnect("110.42.203.195", 6379);
    if (context == nullptr || context->err)
    {
        std::cout << "Error connecting to Redis: " << context->errstr << std::endl;
        return -1;
    }

    // 登录 Redis 服务器
    const char *password = "Aa20010621++"; // Redis 服务器密码
    redisReply *reply = static_cast<redisReply *>(redisCommand(context, "AUTH %s", password));
    if (reply == nullptr)
    {
        std::cout << "Error logging in to Redis: " << context->errstr << std::endl;
        return -1;
    }
    if (reply->type == REDIS_REPLY_ERROR)
    {
        std::cout << "Error logging in to Redis: " << reply->str << std::endl;
        freeReplyObject(reply);
        return -1;
    }
    std::cout << "Logged in to Redis successfully!" << std::endl;
    freeReplyObject(reply);

    // 关闭 Redis 连接
    redisFree(context);

    return 1;
}
