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
CMAKE_SOURCE_DIR = C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp

# Include any dependencies generated for this target.
include libsrc/emacps/src/CMakeFiles/emacps.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/emacps/src/CMakeFiles/emacps.dir/progress.make

# Include the compile flags for this target's objects.
include libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_g.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.obj -MF CMakeFiles/emacps.dir/xemacps_g.c.obj.d -o CMakeFiles/emacps.dir/xemacps_g.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_g.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps_g.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_g.c > CMakeFiles/emacps.dir/xemacps_g.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps_g.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_g.c -o CMakeFiles/emacps.dir/xemacps_g.c.s

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_hw.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.obj -MF CMakeFiles/emacps.dir/xemacps_hw.c.obj.d -o CMakeFiles/emacps.dir/xemacps_hw.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_hw.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps_hw.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_hw.c > CMakeFiles/emacps.dir/xemacps_hw.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps_hw.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_hw.c -o CMakeFiles/emacps.dir/xemacps_hw.c.s

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_control.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.obj -MF CMakeFiles/emacps.dir/xemacps_control.c.obj.d -o CMakeFiles/emacps.dir/xemacps_control.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_control.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps_control.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_control.c > CMakeFiles/emacps.dir/xemacps_control.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps_control.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_control.c -o CMakeFiles/emacps.dir/xemacps_control.c.s

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.obj -MF CMakeFiles/emacps.dir/xemacps.c.obj.d -o CMakeFiles/emacps.dir/xemacps.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps.c > CMakeFiles/emacps.dir/xemacps.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps.c -o CMakeFiles/emacps.dir/xemacps.c.s

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_bdring.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.obj -MF CMakeFiles/emacps.dir/xemacps_bdring.c.obj.d -o CMakeFiles/emacps.dir/xemacps_bdring.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_bdring.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps_bdring.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_bdring.c > CMakeFiles/emacps.dir/xemacps_bdring.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps_bdring.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_bdring.c -o CMakeFiles/emacps.dir/xemacps_bdring.c.s

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_sinit.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.obj -MF CMakeFiles/emacps.dir/xemacps_sinit.c.obj.d -o CMakeFiles/emacps.dir/xemacps_sinit.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_sinit.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps_sinit.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_sinit.c > CMakeFiles/emacps.dir/xemacps_sinit.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps_sinit.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_sinit.c -o CMakeFiles/emacps.dir/xemacps_sinit.c.s

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_intr.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.obj -MF CMakeFiles/emacps.dir/xemacps_intr.c.obj.d -o CMakeFiles/emacps.dir/xemacps_intr.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_intr.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps_intr.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_intr.c > CMakeFiles/emacps.dir/xemacps_intr.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps_intr.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src/xemacps_intr.c -o CMakeFiles/emacps.dir/xemacps_intr.c.s

# Object files for target emacps
emacps_OBJECTS = \
"CMakeFiles/emacps.dir/xemacps_g.c.obj" \
"CMakeFiles/emacps.dir/xemacps_hw.c.obj" \
"CMakeFiles/emacps.dir/xemacps_control.c.obj" \
"CMakeFiles/emacps.dir/xemacps.c.obj" \
"CMakeFiles/emacps.dir/xemacps_bdring.c.obj" \
"CMakeFiles/emacps.dir/xemacps_sinit.c.obj" \
"CMakeFiles/emacps.dir/xemacps_intr.c.obj"

# External object files for target emacps
emacps_EXTERNAL_OBJECTS =

libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/build.make
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C static library libemacps.a"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && $(CMAKE_COMMAND) -P CMakeFiles/emacps.dir/cmake_clean_target.cmake
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/emacps.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsrc/emacps/src/CMakeFiles/emacps.dir/build: libsrc/emacps/src/libemacps.a
.PHONY : libsrc/emacps/src/CMakeFiles/emacps.dir/build

libsrc/emacps/src/CMakeFiles/emacps.dir/clean:
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && $(CMAKE_COMMAND) -P CMakeFiles/emacps.dir/cmake_clean.cmake
.PHONY : libsrc/emacps/src/CMakeFiles/emacps.dir/clean

libsrc/emacps/src/CMakeFiles/emacps.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/emacps/src C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_decoding_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src/CMakeFiles/emacps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/emacps/src/CMakeFiles/emacps.dir/depend

