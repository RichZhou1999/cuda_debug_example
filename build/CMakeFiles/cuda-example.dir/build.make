# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_SOURCE_DIR = /home/yihua/Desktop/example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yihua/Desktop/example/build

# Include any dependencies generated for this target.
include CMakeFiles/cuda-example.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cuda-example.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cuda-example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cuda-example.dir/flags.make

CMakeFiles/cuda-example.dir/main.cu.o: CMakeFiles/cuda-example.dir/flags.make
CMakeFiles/cuda-example.dir/main.cu.o: /home/yihua/Desktop/example/main.cu
CMakeFiles/cuda-example.dir/main.cu.o: CMakeFiles/cuda-example.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yihua/Desktop/example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object CMakeFiles/cuda-example.dir/main.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/yihua/Desktop/example/main.cu -o CMakeFiles/cuda-example.dir/main.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/yihua/Desktop/example/main.cu -MT CMakeFiles/cuda-example.dir/main.cu.o -o CMakeFiles/cuda-example.dir/main.cu.o.d

CMakeFiles/cuda-example.dir/main.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cuda-example.dir/main.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/cuda-example.dir/main.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cuda-example.dir/main.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target cuda-example
cuda__example_OBJECTS = \
"CMakeFiles/cuda-example.dir/main.cu.o"

# External object files for target cuda-example
cuda__example_EXTERNAL_OBJECTS =

cuda-example: CMakeFiles/cuda-example.dir/main.cu.o
cuda-example: CMakeFiles/cuda-example.dir/build.make
cuda-example: CMakeFiles/cuda-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yihua/Desktop/example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA executable cuda-example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cuda-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cuda-example.dir/build: cuda-example
.PHONY : CMakeFiles/cuda-example.dir/build

CMakeFiles/cuda-example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cuda-example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cuda-example.dir/clean

CMakeFiles/cuda-example.dir/depend:
	cd /home/yihua/Desktop/example/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yihua/Desktop/example /home/yihua/Desktop/example /home/yihua/Desktop/example/build /home/yihua/Desktop/example/build /home/yihua/Desktop/example/build/CMakeFiles/cuda-example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cuda-example.dir/depend

