# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/can/Downloads/clion-2017.2.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/can/Downloads/clion-2017.2.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/HW3_StudentPack.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HW3_StudentPack.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HW3_StudentPack.dir/flags.make

CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o: CMakeFiles/HW3_StudentPack.dir/flags.make
CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o: ../Blockchain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o -c "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/Blockchain.cpp"

CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/Blockchain.cpp" > CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.i

CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/Blockchain.cpp" -o CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.s

CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o.requires:

.PHONY : CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o.requires

CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o.provides: CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o.requires
	$(MAKE) -f CMakeFiles/HW3_StudentPack.dir/build.make CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o.provides.build
.PHONY : CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o.provides

CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o.provides.build: CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o


CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o: CMakeFiles/HW3_StudentPack.dir/flags.make
CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o: ../Koin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o -c "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/Koin.cpp"

CMakeFiles/HW3_StudentPack.dir/Koin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HW3_StudentPack.dir/Koin.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/Koin.cpp" > CMakeFiles/HW3_StudentPack.dir/Koin.cpp.i

CMakeFiles/HW3_StudentPack.dir/Koin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HW3_StudentPack.dir/Koin.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/Koin.cpp" -o CMakeFiles/HW3_StudentPack.dir/Koin.cpp.s

CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o.requires:

.PHONY : CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o.requires

CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o.provides: CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o.requires
	$(MAKE) -f CMakeFiles/HW3_StudentPack.dir/build.make CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o.provides.build
.PHONY : CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o.provides

CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o.provides.build: CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o


CMakeFiles/HW3_StudentPack.dir/main.cpp.o: CMakeFiles/HW3_StudentPack.dir/flags.make
CMakeFiles/HW3_StudentPack.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/HW3_StudentPack.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HW3_StudentPack.dir/main.cpp.o -c "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/main.cpp"

CMakeFiles/HW3_StudentPack.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HW3_StudentPack.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/main.cpp" > CMakeFiles/HW3_StudentPack.dir/main.cpp.i

CMakeFiles/HW3_StudentPack.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HW3_StudentPack.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/main.cpp" -o CMakeFiles/HW3_StudentPack.dir/main.cpp.s

CMakeFiles/HW3_StudentPack.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/HW3_StudentPack.dir/main.cpp.o.requires

CMakeFiles/HW3_StudentPack.dir/main.cpp.o.provides: CMakeFiles/HW3_StudentPack.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/HW3_StudentPack.dir/build.make CMakeFiles/HW3_StudentPack.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/HW3_StudentPack.dir/main.cpp.o.provides

CMakeFiles/HW3_StudentPack.dir/main.cpp.o.provides.build: CMakeFiles/HW3_StudentPack.dir/main.cpp.o


CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o: CMakeFiles/HW3_StudentPack.dir/flags.make
CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o: ../mersenne.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o -c "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/mersenne.cpp"

CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/mersenne.cpp" > CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.i

CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/mersenne.cpp" -o CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.s

CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o.requires:

.PHONY : CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o.requires

CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o.provides: CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o.requires
	$(MAKE) -f CMakeFiles/HW3_StudentPack.dir/build.make CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o.provides.build
.PHONY : CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o.provides

CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o.provides.build: CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o


CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o: CMakeFiles/HW3_StudentPack.dir/flags.make
CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o: ../Miner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o -c "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/Miner.cpp"

CMakeFiles/HW3_StudentPack.dir/Miner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HW3_StudentPack.dir/Miner.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/Miner.cpp" > CMakeFiles/HW3_StudentPack.dir/Miner.cpp.i

CMakeFiles/HW3_StudentPack.dir/Miner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HW3_StudentPack.dir/Miner.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/Miner.cpp" -o CMakeFiles/HW3_StudentPack.dir/Miner.cpp.s

CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o.requires:

.PHONY : CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o.requires

CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o.provides: CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o.requires
	$(MAKE) -f CMakeFiles/HW3_StudentPack.dir/build.make CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o.provides.build
.PHONY : CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o.provides

CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o.provides.build: CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o


CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o: CMakeFiles/HW3_StudentPack.dir/flags.make
CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o: ../TestableAllStream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o -c "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/TestableAllStream.cpp"

CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/TestableAllStream.cpp" > CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.i

CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/TestableAllStream.cpp" -o CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.s

CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o.requires:

.PHONY : CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o.requires

CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o.provides: CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o.requires
	$(MAKE) -f CMakeFiles/HW3_StudentPack.dir/build.make CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o.provides.build
.PHONY : CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o.provides

CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o.provides.build: CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o


CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o: CMakeFiles/HW3_StudentPack.dir/flags.make
CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o: ../TestableBlockchain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o -c "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/TestableBlockchain.cpp"

CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/TestableBlockchain.cpp" > CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.i

CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/TestableBlockchain.cpp" -o CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.s

CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o.requires:

.PHONY : CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o.requires

CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o.provides: CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o.requires
	$(MAKE) -f CMakeFiles/HW3_StudentPack.dir/build.make CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o.provides.build
.PHONY : CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o.provides

CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o.provides.build: CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o


CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o: CMakeFiles/HW3_StudentPack.dir/flags.make
CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o: ../TestableKoin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o -c "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/TestableKoin.cpp"

CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/TestableKoin.cpp" > CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.i

CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/TestableKoin.cpp" -o CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.s

CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o.requires:

.PHONY : CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o.requires

CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o.provides: CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o.requires
	$(MAKE) -f CMakeFiles/HW3_StudentPack.dir/build.make CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o.provides.build
.PHONY : CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o.provides

CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o.provides.build: CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o


CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o: CMakeFiles/HW3_StudentPack.dir/flags.make
CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o: ../TestableMiner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o -c "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/TestableMiner.cpp"

CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/TestableMiner.cpp" > CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.i

CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/TestableMiner.cpp" -o CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.s

CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o.requires:

.PHONY : CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o.requires

CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o.provides: CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o.requires
	$(MAKE) -f CMakeFiles/HW3_StudentPack.dir/build.make CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o.provides.build
.PHONY : CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o.provides

CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o.provides.build: CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o


# Object files for target HW3_StudentPack
HW3_StudentPack_OBJECTS = \
"CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o" \
"CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o" \
"CMakeFiles/HW3_StudentPack.dir/main.cpp.o" \
"CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o" \
"CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o" \
"CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o" \
"CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o" \
"CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o" \
"CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o"

# External object files for target HW3_StudentPack
HW3_StudentPack_EXTERNAL_OBJECTS =

HW3_StudentPack: CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o
HW3_StudentPack: CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o
HW3_StudentPack: CMakeFiles/HW3_StudentPack.dir/main.cpp.o
HW3_StudentPack: CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o
HW3_StudentPack: CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o
HW3_StudentPack: CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o
HW3_StudentPack: CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o
HW3_StudentPack: CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o
HW3_StudentPack: CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o
HW3_StudentPack: CMakeFiles/HW3_StudentPack.dir/build.make
HW3_StudentPack: CMakeFiles/HW3_StudentPack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable HW3_StudentPack"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HW3_StudentPack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HW3_StudentPack.dir/build: HW3_StudentPack

.PHONY : CMakeFiles/HW3_StudentPack.dir/build

CMakeFiles/HW3_StudentPack.dir/requires: CMakeFiles/HW3_StudentPack.dir/Blockchain.cpp.o.requires
CMakeFiles/HW3_StudentPack.dir/requires: CMakeFiles/HW3_StudentPack.dir/Koin.cpp.o.requires
CMakeFiles/HW3_StudentPack.dir/requires: CMakeFiles/HW3_StudentPack.dir/main.cpp.o.requires
CMakeFiles/HW3_StudentPack.dir/requires: CMakeFiles/HW3_StudentPack.dir/mersenne.cpp.o.requires
CMakeFiles/HW3_StudentPack.dir/requires: CMakeFiles/HW3_StudentPack.dir/Miner.cpp.o.requires
CMakeFiles/HW3_StudentPack.dir/requires: CMakeFiles/HW3_StudentPack.dir/TestableAllStream.cpp.o.requires
CMakeFiles/HW3_StudentPack.dir/requires: CMakeFiles/HW3_StudentPack.dir/TestableBlockchain.cpp.o.requires
CMakeFiles/HW3_StudentPack.dir/requires: CMakeFiles/HW3_StudentPack.dir/TestableKoin.cpp.o.requires
CMakeFiles/HW3_StudentPack.dir/requires: CMakeFiles/HW3_StudentPack.dir/TestableMiner.cpp.o.requires

.PHONY : CMakeFiles/HW3_StudentPack.dir/requires

CMakeFiles/HW3_StudentPack.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HW3_StudentPack.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HW3_StudentPack.dir/clean

CMakeFiles/HW3_StudentPack.dir/depend:
	cd "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack" "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack" "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug" "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug" "/home/can/Desktop/pl/HW3-StudentPack (3)/HW3-StudentPack/cmake-build-debug/CMakeFiles/HW3_StudentPack.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/HW3_StudentPack.dir/depend

