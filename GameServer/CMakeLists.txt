cmake_minimum_required(VERSION 3.22)
project(GaerServer)

set(CMAKE_CXX_STANDARD 11)

add_executable(GateServer 
    GateMain.cpp 
    ../LogicWork/Recv.cpp 
    ../LogicWork/Send.cpp 
    ./Tool/FunctionUtil.cpp 
    ./Tool/RingBuffers.cpp 
    ./Protobuf/MessageProto.pb.cc
)
# ADD DLL
target_link_libraries(GateServer protobuf)
target_link_libraries(GateServer pthread)