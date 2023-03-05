#include <mysql/mysql.h>

#include "../HeaderFile/GlobalDefine.h"
#include "../HeaderFile/MyHeader.h"

int SqlOperation()
{
    // 连接 MySQL 数据库
    MYSQL *mysql = mysql_init(NULL);

    if (!mysql_real_connect(mysql, "110.42.203.195", "root", "Aa20010621++", "chatGPT", 3306, NULL, 0))
    {
        std::cerr << "Failed to connect to database: Error: " << mysql_error(mysql) << std::endl;
        return -1;
    }

    // 执行 SQL 查询
    std::string sql = "SELECT * FROM user";
    if (mysql_query(mysql, sql.c_str()))
    {
        std::cerr << "Error: " << mysql_error(mysql) << std::endl;
        return -1;
    }

    // 获取查询结果
    MYSQL_RES *result = mysql_store_result(mysql);
    if (result == NULL)
    {
        std::cerr << "Error: " << mysql_error(mysql) << std::endl;
        return -1;
    }

    // 遍历查询结果
    int num_fields = mysql_num_fields(result);
    MYSQL_ROW row;
    while ((row = mysql_fetch_row(result)))
    {
        for (int i = 0; i < num_fields; i++)
        {
            std::cout << row[i] << " ";
        }
        std::cout << std::endl;
    }

    // 释放资源
    mysql_free_result(result);
    mysql_close(mysql);
    return 1;
}
