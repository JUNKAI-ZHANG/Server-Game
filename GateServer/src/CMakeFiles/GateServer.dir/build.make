# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ops/CodeHome/Server/GateServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ops/CodeHome/Server/GateServer/src

# Include any dependencies generated for this target.
include CMakeFiles/GateServer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/GateServer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/GateServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GateServer.dir/flags.make

CMakeFiles/GateServer.dir/GateMain.cpp.o: CMakeFiles/GateServer.dir/flags.make
CMakeFiles/GateServer.dir/GateMain.cpp.o: GateMain.cpp
CMakeFiles/GateServer.dir/GateMain.cpp.o: CMakeFiles/GateServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ops/CodeHome/Server/GateServer/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/GateServer.dir/GateMain.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GateServer.dir/GateMain.cpp.o -MF CMakeFiles/GateServer.dir/GateMain.cpp.o.d -o CMakeFiles/GateServer.dir/GateMain.cpp.o -c /home/ops/CodeHome/Server/GateServer/src/GateMain.cpp

CMakeFiles/GateServer.dir/GateMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GateServer.dir/GateMain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ops/CodeHome/Server/GateServer/src/GateMain.cpp > CMakeFiles/GateServer.dir/GateMain.cpp.i

CMakeFiles/GateServer.dir/GateMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GateServer.dir/GateMain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ops/CodeHome/Server/GateServer/src/GateMain.cpp -o CMakeFiles/GateServer.dir/GateMain.cpp.s

CMakeFiles/GateServer.dir/Recv.cpp.o: CMakeFiles/GateServer.dir/flags.make
CMakeFiles/GateServer.dir/Recv.cpp.o: Recv.cpp
CMakeFiles/GateServer.dir/Recv.cpp.o: CMakeFiles/GateServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ops/CodeHome/Server/GateServer/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/GateServer.dir/Recv.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GateServer.dir/Recv.cpp.o -MF CMakeFiles/GateServer.dir/Recv.cpp.o.d -o CMakeFiles/GateServer.dir/Recv.cpp.o -c /home/ops/CodeHome/Server/GateServer/src/Recv.cpp

CMakeFiles/GateServer.dir/Recv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GateServer.dir/Recv.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ops/CodeHome/Server/GateServer/src/Recv.cpp > CMakeFiles/GateServer.dir/Recv.cpp.i

CMakeFiles/GateServer.dir/Recv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GateServer.dir/Recv.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ops/CodeHome/Server/GateServer/src/Recv.cpp -o CMakeFiles/GateServer.dir/Recv.cpp.s

CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.o: CMakeFiles/GateServer.dir/flags.make
CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.o: Tool/FunctionUtil.cpp
CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.o: CMakeFiles/GateServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ops/CodeHome/Server/GateServer/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.o -MF CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.o.d -o CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.o -c /home/ops/CodeHome/Server/GateServer/src/Tool/FunctionUtil.cpp

CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ops/CodeHome/Server/GateServer/src/Tool/FunctionUtil.cpp > CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.i

CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ops/CodeHome/Server/GateServer/src/Tool/FunctionUtil.cpp -o CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.s

CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.o: CMakeFiles/GateServer.dir/flags.make
CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.o: Tool/RingBuffers.cpp
CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.o: CMakeFiles/GateServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ops/CodeHome/Server/GateServer/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.o -MF CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.o.d -o CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.o -c /home/ops/CodeHome/Server/GateServer/src/Tool/RingBuffers.cpp

CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ops/CodeHome/Server/GateServer/src/Tool/RingBuffers.cpp > CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.i

CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ops/CodeHome/Server/GateServer/src/Tool/RingBuffers.cpp -o CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.s

CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.o: CMakeFiles/GateServer.dir/flags.make
CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.o: Protobuf/MessageProto.pb.cc
CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.o: CMakeFiles/GateServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ops/CodeHome/Server/GateServer/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.o -MF CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.o.d -o CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.o -c /home/ops/CodeHome/Server/GateServer/src/Protobuf/MessageProto.pb.cc

CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ops/CodeHome/Server/GateServer/src/Protobuf/MessageProto.pb.cc > CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.i

CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ops/CodeHome/Server/GateServer/src/Protobuf/MessageProto.pb.cc -o CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.s

# Object files for target GateServer
GateServer_OBJECTS = \
"CMakeFiles/GateServer.dir/GateMain.cpp.o" \
"CMakeFiles/GateServer.dir/Recv.cpp.o" \
"CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.o" \
"CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.o" \
"CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.o"

# External object files for target GateServer
GateServer_EXTERNAL_OBJECTS =

GateServer: CMakeFiles/GateServer.dir/GateMain.cpp.o
GateServer: CMakeFiles/GateServer.dir/Recv.cpp.o
GateServer: CMakeFiles/GateServer.dir/Tool/FunctionUtil.cpp.o
GateServer: CMakeFiles/GateServer.dir/Tool/RingBuffers.cpp.o
GateServer: CMakeFiles/GateServer.dir/Protobuf/MessageProto.pb.cc.o
GateServer: CMakeFiles/GateServer.dir/build.make
GateServer: CMakeFiles/GateServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ops/CodeHome/Server/GateServer/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable GateServer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GateServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GateServer.dir/build: GateServer
.PHONY : CMakeFiles/GateServer.dir/build

CMakeFiles/GateServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GateServer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GateServer.dir/clean

CMakeFiles/GateServer.dir/depend:
	cd /home/ops/CodeHome/Server/GateServer/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ops/CodeHome/Server/GateServer /home/ops/CodeHome/Server/GateServer /home/ops/CodeHome/Server/GateServer/src /home/ops/CodeHome/Server/GateServer/src /home/ops/CodeHome/Server/GateServer/src/CMakeFiles/GateServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GateServer.dir/depend

