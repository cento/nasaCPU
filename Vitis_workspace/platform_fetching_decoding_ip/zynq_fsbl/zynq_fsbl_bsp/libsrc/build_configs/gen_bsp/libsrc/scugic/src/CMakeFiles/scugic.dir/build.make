# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = C:/Xilinx/Vitis/2023.2/tps/win64/cmake-3.24.2/bin/cmake.exe

# The command to remove a file.
RM = C:/Xilinx/Vitis/2023.2/tps/win64/cmake-3.24.2/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp

# Include any dependencies generated for this target.
include libsrc/scugic/src/CMakeFiles/scugic.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsrc/scugic/src/CMakeFiles/scugic.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/scugic/src/CMakeFiles/scugic.dir/progress.make

# Include the compile flags for this target's objects.
include libsrc/scugic/src/CMakeFiles/scugic.dir/flags.make

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_hw.c.obj: libsrc/scugic/src/CMakeFiles/scugic.dir/flags.make
libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_hw.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_hw.c
libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_hw.c.obj: libsrc/scugic/src/CMakeFiles/scugic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_hw.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_hw.c.obj -MF CMakeFiles/scugic.dir/xscugic_hw.c.obj.d -o CMakeFiles/scugic.dir/xscugic_hw.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_hw.c

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_hw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scugic.dir/xscugic_hw.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_hw.c > CMakeFiles/scugic.dir/xscugic_hw.c.i

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_hw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scugic.dir/xscugic_hw.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_hw.c -o CMakeFiles/scugic.dir/xscugic_hw.c.s

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_g.c.obj: libsrc/scugic/src/CMakeFiles/scugic.dir/flags.make
libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_g.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_g.c
libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_g.c.obj: libsrc/scugic/src/CMakeFiles/scugic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_g.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_g.c.obj -MF CMakeFiles/scugic.dir/xscugic_g.c.obj.d -o CMakeFiles/scugic.dir/xscugic_g.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_g.c

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_g.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scugic.dir/xscugic_g.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_g.c > CMakeFiles/scugic.dir/xscugic_g.c.i

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_g.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scugic.dir/xscugic_g.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_g.c -o CMakeFiles/scugic.dir/xscugic_g.c.s

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_sinit.c.obj: libsrc/scugic/src/CMakeFiles/scugic.dir/flags.make
libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_sinit.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_sinit.c
libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_sinit.c.obj: libsrc/scugic/src/CMakeFiles/scugic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_sinit.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_sinit.c.obj -MF CMakeFiles/scugic.dir/xscugic_sinit.c.obj.d -o CMakeFiles/scugic.dir/xscugic_sinit.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_sinit.c

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_sinit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scugic.dir/xscugic_sinit.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_sinit.c > CMakeFiles/scugic.dir/xscugic_sinit.c.i

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_sinit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scugic.dir/xscugic_sinit.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_sinit.c -o CMakeFiles/scugic.dir/xscugic_sinit.c.s

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_intr.c.obj: libsrc/scugic/src/CMakeFiles/scugic.dir/flags.make
libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_intr.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_intr.c
libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_intr.c.obj: libsrc/scugic/src/CMakeFiles/scugic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_intr.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_intr.c.obj -MF CMakeFiles/scugic.dir/xscugic_intr.c.obj.d -o CMakeFiles/scugic.dir/xscugic_intr.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_intr.c

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_intr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scugic.dir/xscugic_intr.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_intr.c > CMakeFiles/scugic.dir/xscugic_intr.c.i

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_intr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scugic.dir/xscugic_intr.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_intr.c -o CMakeFiles/scugic.dir/xscugic_intr.c.s

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_selftest.c.obj: libsrc/scugic/src/CMakeFiles/scugic.dir/flags.make
libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_selftest.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_selftest.c
libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_selftest.c.obj: libsrc/scugic/src/CMakeFiles/scugic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_selftest.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_selftest.c.obj -MF CMakeFiles/scugic.dir/xscugic_selftest.c.obj.d -o CMakeFiles/scugic.dir/xscugic_selftest.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_selftest.c

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_selftest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scugic.dir/xscugic_selftest.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_selftest.c > CMakeFiles/scugic.dir/xscugic_selftest.c.i

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_selftest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scugic.dir/xscugic_selftest.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic_selftest.c -o CMakeFiles/scugic.dir/xscugic_selftest.c.s

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic.c.obj: libsrc/scugic/src/CMakeFiles/scugic.dir/flags.make
libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic.c
libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic.c.obj: libsrc/scugic/src/CMakeFiles/scugic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic.c.obj -MF CMakeFiles/scugic.dir/xscugic.c.obj.d -o CMakeFiles/scugic.dir/xscugic.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic.c

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scugic.dir/xscugic.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic.c > CMakeFiles/scugic.dir/xscugic.c.i

libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scugic.dir/xscugic.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src/xscugic.c -o CMakeFiles/scugic.dir/xscugic.c.s

# Object files for target scugic
scugic_OBJECTS = \
"CMakeFiles/scugic.dir/xscugic_hw.c.obj" \
"CMakeFiles/scugic.dir/xscugic_g.c.obj" \
"CMakeFiles/scugic.dir/xscugic_sinit.c.obj" \
"CMakeFiles/scugic.dir/xscugic_intr.c.obj" \
"CMakeFiles/scugic.dir/xscugic_selftest.c.obj" \
"CMakeFiles/scugic.dir/xscugic.c.obj"

# External object files for target scugic
scugic_EXTERNAL_OBJECTS =

libsrc/scugic/src/libscugic.a: libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_hw.c.obj
libsrc/scugic/src/libscugic.a: libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_g.c.obj
libsrc/scugic/src/libscugic.a: libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_sinit.c.obj
libsrc/scugic/src/libscugic.a: libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_intr.c.obj
libsrc/scugic/src/libscugic.a: libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_selftest.c.obj
libsrc/scugic/src/libscugic.a: libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic.c.obj
libsrc/scugic/src/libscugic.a: libsrc/scugic/src/CMakeFiles/scugic.dir/build.make
libsrc/scugic/src/libscugic.a: libsrc/scugic/src/CMakeFiles/scugic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C static library libscugic.a"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && $(CMAKE_COMMAND) -P CMakeFiles/scugic.dir/cmake_clean_target.cmake
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scugic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsrc/scugic/src/CMakeFiles/scugic.dir/build: libsrc/scugic/src/libscugic.a
.PHONY : libsrc/scugic/src/CMakeFiles/scugic.dir/build

libsrc/scugic/src/CMakeFiles/scugic.dir/clean:
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src && $(CMAKE_COMMAND) -P CMakeFiles/scugic.dir/cmake_clean.cmake
.PHONY : libsrc/scugic/src/CMakeFiles/scugic.dir/clean

libsrc/scugic/src/CMakeFiles/scugic.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/scugic/src C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src/CMakeFiles/scugic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/scugic/src/CMakeFiles/scugic.dir/depend

