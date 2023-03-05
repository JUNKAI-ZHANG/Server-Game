cmake_minimum_required(VERSION 3.22)
project(DbServer)

set(CMAKE_CXX_STANDARD 11)

# ADD DLL-PATH
link_directories(/usr/lib64/mysql)

add_executable(DbServer 
    DbMain.cpp 
    ./LogicWork/Recv.cpp 
    ./LogicWork/Send.cpp 
    ./DataBase/RedisLogic.cpp
    ./DataBase/SqlLogic.cpp
    ./Tool/FunctionUtil.cpp 
    ./Tool/RingBuffers.cpp 
    ./Protobuf/MessageProto.pb.cc
)
# ADD DLL
target_link_libraries(DbServer protobuf)
target_link_libraries(DbServer pthread)
target_link_libraries(DbServer mysqlclient)
target_link_libraries(DbServer hiredis)