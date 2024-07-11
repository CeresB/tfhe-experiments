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
include libtfhe/CMakeFiles/tfhe-spqlios-fma.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libtfhe/CMakeFiles/tfhe-spqlios-fma.dir/compiler_depend.make

# Include the progress variables for this target.
include libtfhe/CMakeFiles/tfhe-spqlios-fma.dir/progress.make

# Include the compile flags for this target's objects.
include libtfhe/CMakeFiles/tfhe-spqlios-fma.dir/flags.make

# Object files for target tfhe-spqlios-fma
tfhe__spqlios__fma_OBJECTS =

# External object files for target tfhe-spqlios-fma
tfhe__spqlios__fma_EXTERNAL_OBJECTS = \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/autogenerated.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/lwebootstrappingkey.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/lwe.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/lwe-functions.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/lwekey.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/lwekeyswitch.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/lweparams.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/lwesamples.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/multiplication.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/numeric-functions.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/polynomials.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/tgsw.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/tlwe.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/tlwe-functions.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/tgsw-functions.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/tlwe-fft-operations.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/tgsw-fft-operations.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/toruspolynomial-functions.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/boot-gates.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/lwe-keyswitch-functions.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/lwe-bootstrapping-functions.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/lwe-bootstrapping-functions-fft.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/tfhe_io.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/tfhe_generic_streams.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/tfhe_garbage_collector.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/tfhe_gate_bootstrapping.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-core.dir/tfhe_gate_bootstrapping_structures.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-fma.dir/spqlios-fft-impl.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-fma.dir/spqlios-fft-fma.s.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-fma.dir/spqlios-ifft-fma.s.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-fma.dir/fft_processor_spqlios.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-fma.dir/lagrangehalfc_impl.cpp.o" \
"/home/myguardian/tfhe-stuff/tfhe/build/libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-fma.dir/lagrangehalfc_impl_fma.s.o"

libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/autogenerated.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/lwebootstrappingkey.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/lwe.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/lwe-functions.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/lwekey.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/lwekeyswitch.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/lweparams.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/lwesamples.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/multiplication.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/numeric-functions.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/polynomials.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/tgsw.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/tlwe.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/tlwe-functions.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/tgsw-functions.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/tlwe-fft-operations.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/tgsw-fft-operations.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/toruspolynomial-functions.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/boot-gates.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/lwe-keyswitch-functions.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/lwe-bootstrapping-functions.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/lwe-bootstrapping-functions-fft.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/tfhe_io.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/tfhe_generic_streams.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/tfhe_garbage_collector.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/tfhe_gate_bootstrapping.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-core.dir/tfhe_gate_bootstrapping_structures.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-fma.dir/spqlios-fft-impl.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-fma.dir/spqlios-fft-fma.s.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-fma.dir/spqlios-ifft-fma.s.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-fma.dir/fft_processor_spqlios.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-fma.dir/lagrangehalfc_impl.cpp.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/fft_processors/spqlios/CMakeFiles/tfhe-fft-spqlios-fma.dir/lagrangehalfc_impl_fma.s.o
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-spqlios-fma.dir/build.make
libtfhe/libtfhe-spqlios-fma.so: libtfhe/CMakeFiles/tfhe-spqlios-fma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/myguardian/tfhe-stuff/tfhe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX shared library libtfhe-spqlios-fma.so"
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tfhe-spqlios-fma.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libtfhe/CMakeFiles/tfhe-spqlios-fma.dir/build: libtfhe/libtfhe-spqlios-fma.so
.PHONY : libtfhe/CMakeFiles/tfhe-spqlios-fma.dir/build

libtfhe/CMakeFiles/tfhe-spqlios-fma.dir/clean:
	cd /home/myguardian/tfhe-stuff/tfhe/build/libtfhe && $(CMAKE_COMMAND) -P CMakeFiles/tfhe-spqlios-fma.dir/cmake_clean.cmake
.PHONY : libtfhe/CMakeFiles/tfhe-spqlios-fma.dir/clean

libtfhe/CMakeFiles/tfhe-spqlios-fma.dir/depend:
	cd /home/myguardian/tfhe-stuff/tfhe/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/myguardian/tfhe-stuff/tfhe/src /home/myguardian/tfhe-stuff/tfhe/src/libtfhe /home/myguardian/tfhe-stuff/tfhe/build /home/myguardian/tfhe-stuff/tfhe/build/libtfhe /home/myguardian/tfhe-stuff/tfhe/build/libtfhe/CMakeFiles/tfhe-spqlios-fma.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libtfhe/CMakeFiles/tfhe-spqlios-fma.dir/depend

