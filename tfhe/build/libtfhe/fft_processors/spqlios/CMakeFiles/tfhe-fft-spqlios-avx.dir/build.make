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
CMAKE_SOURCE_DIR = /home/myguardian/tfhe-stuff/tfhe/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/myguardian/tfhe-stuff/tfhe/build

# Include any dependencies generated for this target.
include libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/compiler_depend.make

# Include the progress variables for this target.
include libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/progress.make

# Include the compile flags for this target's objects.
include libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/flags.make

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.o: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/flags.make
libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.o: /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/spqlios-fft-impl.cpp
libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.o: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/myguardian/tfhe-stuff/tfhe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.o"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.o -MF CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.o.d -o CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.o -c /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/spqlios-fft-impl.cpp

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.i"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/spqlios-fft-impl.cpp > CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.i

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.s"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/spqlios-fft-impl.cpp -o CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.s

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-avx.s.o: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/flags.make
libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-avx.s.o: /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/spqlios-fft-avx.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/myguardian/tfhe-stuff/tfhe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building ASM object libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-avx.s.o"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/cc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-avx.s.o -c /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/spqlios-fft-avx.s

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-avx.s.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing ASM source to CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-avx.s.i"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/cc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/spqlios-fft-avx.s > CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-avx.s.i

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-avx.s.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling ASM source to assembly CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-avx.s.s"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/cc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/spqlios-fft-avx.s -o CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-avx.s.s

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-ifft-avx.s.o: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/flags.make
libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-ifft-avx.s.o: /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/spqlios-ifft-avx.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/myguardian/tfhe-stuff/tfhe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building ASM object libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-ifft-avx.s.o"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/cc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-ifft-avx.s.o -c /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/spqlios-ifft-avx.s

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-ifft-avx.s.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing ASM source to CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-ifft-avx.s.i"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/cc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/spqlios-ifft-avx.s > CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-ifft-avx.s.i

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-ifft-avx.s.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling ASM source to assembly CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-ifft-avx.s.s"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/cc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/spqlios-ifft-avx.s -o CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-ifft-avx.s.s

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.o: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/flags.make
libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.o: /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/fft_processor_spqlios.cpp
libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.o: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/myguardian/tfhe-stuff/tfhe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.o"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.o -MF CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.o.d -o CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.o -c /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/fft_processor_spqlios.cpp

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.i"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/fft_processor_spqlios.cpp > CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.i

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.s"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/fft_processor_spqlios.cpp -o CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.s

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.o: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/flags.make
libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.o: /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/lagrangehalfc_impl.cpp
libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.o: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/myguardian/tfhe-stuff/tfhe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.o"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.o -MF CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.o.d -o CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.o -c /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/lagrangehalfc_impl.cpp

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.i"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/lagrangehalfc_impl.cpp > CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.i

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.s"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/lagrangehalfc_impl.cpp -o CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.s

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl_avx.s.o: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/flags.make
libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl_avx.s.o: /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/lagrangehalfc_impl_avx.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/myguardian/tfhe-stuff/tfhe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building ASM object libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl_avx.s.o"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/cc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl_avx.s.o -c /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/lagrangehalfc_impl_avx.s

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl_avx.s.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing ASM source to CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl_avx.s.i"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/cc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/lagrangehalfc_impl_avx.s > CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl_avx.s.i

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl_avx.s.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling ASM source to assembly CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl_avx.s.s"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && /usr/bin/cc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios/lagrangehalfc_impl_avx.s -o CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl_avx.s.s

tfhe-fft-spqlios-avx: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-impl.cpp.o
tfhe-fft-spqlios-avx: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-fft-avx.s.o
tfhe-fft-spqlios-avx: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/spqlios-ifft-avx.s.o
tfhe-fft-spqlios-avx: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/fft_processor_spqlios.cpp.o
tfhe-fft-spqlios-avx: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl.cpp.o
tfhe-fft-spqlios-avx: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/lagrangehalfc_impl_avx.s.o
tfhe-fft-spqlios-avx: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/build.make
.PHONY : tfhe-fft-spqlios-avx

# Rule to build all files generated by this target.
libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/build: tfhe-fft-spqlios-avx
.PHONY : libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/build

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/clean:
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios && $(CMAKE_COMMAND) -P CMakeFiles/tfhe-fft-spqlios-avx.dir/cmake_clean.cmake
.PHONY : libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/clean

libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/depend:
	cd /home/myguardian/tfhe-stuff/tfhe/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/myguardian/tfhe-stuff/tfhe/src /home/myguardian/tfhe-stuff/tfhe/src/libtfhe/fft_processors/spqlios /home/myguardian/tfhe-stuff/tfhe/build /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-avx.dir/depend

