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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/leo/dev/data-encrypter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/leo/dev/data-encrypter/build

# Include any dependencies generated for this target.
include CMakeFiles/data-encrypter.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/data-encrypter.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/data-encrypter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/data-encrypter.dir/flags.make

CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.o: CMakeFiles/data-encrypter.dir/flags.make
CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.o: ../src/data-encrypter.cpp
CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.o: CMakeFiles/data-encrypter.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leo/dev/data-encrypter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.o -MF CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.o.d -o CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.o -c /home/leo/dev/data-encrypter/src/data-encrypter.cpp

CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leo/dev/data-encrypter/src/data-encrypter.cpp > CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.i

CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leo/dev/data-encrypter/src/data-encrypter.cpp -o CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.s

CMakeFiles/data-encrypter.dir/lib/AES.cpp.o: CMakeFiles/data-encrypter.dir/flags.make
CMakeFiles/data-encrypter.dir/lib/AES.cpp.o: ../lib/AES.cpp
CMakeFiles/data-encrypter.dir/lib/AES.cpp.o: CMakeFiles/data-encrypter.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leo/dev/data-encrypter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/data-encrypter.dir/lib/AES.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/data-encrypter.dir/lib/AES.cpp.o -MF CMakeFiles/data-encrypter.dir/lib/AES.cpp.o.d -o CMakeFiles/data-encrypter.dir/lib/AES.cpp.o -c /home/leo/dev/data-encrypter/lib/AES.cpp

CMakeFiles/data-encrypter.dir/lib/AES.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/data-encrypter.dir/lib/AES.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leo/dev/data-encrypter/lib/AES.cpp > CMakeFiles/data-encrypter.dir/lib/AES.cpp.i

CMakeFiles/data-encrypter.dir/lib/AES.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/data-encrypter.dir/lib/AES.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leo/dev/data-encrypter/lib/AES.cpp -o CMakeFiles/data-encrypter.dir/lib/AES.cpp.s

CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.o: CMakeFiles/data-encrypter.dir/flags.make
CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.o: ../src/FileHandling.cpp
CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.o: CMakeFiles/data-encrypter.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leo/dev/data-encrypter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.o -MF CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.o.d -o CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.o -c /home/leo/dev/data-encrypter/src/FileHandling.cpp

CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leo/dev/data-encrypter/src/FileHandling.cpp > CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.i

CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leo/dev/data-encrypter/src/FileHandling.cpp -o CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.s

CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.o: CMakeFiles/data-encrypter.dir/flags.make
CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.o: ../lib/SHA512.cpp
CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.o: CMakeFiles/data-encrypter.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leo/dev/data-encrypter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.o -MF CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.o.d -o CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.o -c /home/leo/dev/data-encrypter/lib/SHA512.cpp

CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leo/dev/data-encrypter/lib/SHA512.cpp > CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.i

CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leo/dev/data-encrypter/lib/SHA512.cpp -o CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.s

# Object files for target data-encrypter
data__encrypter_OBJECTS = \
"CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.o" \
"CMakeFiles/data-encrypter.dir/lib/AES.cpp.o" \
"CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.o" \
"CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.o"

# External object files for target data-encrypter
data__encrypter_EXTERNAL_OBJECTS =

data-encrypter: CMakeFiles/data-encrypter.dir/src/data-encrypter.cpp.o
data-encrypter: CMakeFiles/data-encrypter.dir/lib/AES.cpp.o
data-encrypter: CMakeFiles/data-encrypter.dir/src/FileHandling.cpp.o
data-encrypter: CMakeFiles/data-encrypter.dir/lib/SHA512.cpp.o
data-encrypter: CMakeFiles/data-encrypter.dir/build.make
data-encrypter: CMakeFiles/data-encrypter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/leo/dev/data-encrypter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable data-encrypter"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/data-encrypter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/data-encrypter.dir/build: data-encrypter
.PHONY : CMakeFiles/data-encrypter.dir/build

CMakeFiles/data-encrypter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/data-encrypter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/data-encrypter.dir/clean

CMakeFiles/data-encrypter.dir/depend:
	cd /home/leo/dev/data-encrypter/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leo/dev/data-encrypter /home/leo/dev/data-encrypter /home/leo/dev/data-encrypter/build /home/leo/dev/data-encrypter/build /home/leo/dev/data-encrypter/build/CMakeFiles/data-encrypter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/data-encrypter.dir/depend

