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
CMAKE_SOURCE_DIR = C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp

# Include any dependencies generated for this target.
include libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/progress.make

# Include the compile flags for this target's objects.
include libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/flags.make

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip.c.obj: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/flags.make
libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip.c
libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip.c.obj: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip.c.obj -MF CMakeFiles/fetching_ip.dir/xfetching_ip.c.obj.d -o CMakeFiles/fetching_ip.dir/xfetching_ip.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip.c

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fetching_ip.dir/xfetching_ip.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip.c > CMakeFiles/fetching_ip.dir/xfetching_ip.c.i

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fetching_ip.dir/xfetching_ip.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip.c -o CMakeFiles/fetching_ip.dir/xfetching_ip.c.s

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.obj: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/flags.make
libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip_sinit.c
libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.obj: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.obj -MF CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.obj.d -o CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip_sinit.c

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip_sinit.c > CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.i

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip_sinit.c -o CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.s

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.obj: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/flags.make
libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip_linux.c
libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.obj: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.obj -MF CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.obj.d -o CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip_linux.c

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip_linux.c > CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.i

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip_linux.c -o CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.s

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.obj: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/flags.make
libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.obj: C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip_g.c
libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.obj: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.obj"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.obj -MF CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.obj.d -o CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.obj -c C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip_g.c

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.i"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip_g.c > CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.i

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.s"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src/xfetching_ip_g.c -o CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.s

# Object files for target fetching_ip
fetching_ip_OBJECTS = \
"CMakeFiles/fetching_ip.dir/xfetching_ip.c.obj" \
"CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.obj" \
"CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.obj" \
"CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.obj"

# External object files for target fetching_ip
fetching_ip_EXTERNAL_OBJECTS =

libsrc/fetching_ip/src/libfetching_ip.a: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip.c.obj
libsrc/fetching_ip/src/libfetching_ip.a: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_sinit.c.obj
libsrc/fetching_ip/src/libfetching_ip.a: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_linux.c.obj
libsrc/fetching_ip/src/libfetching_ip.a: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/xfetching_ip_g.c.obj
libsrc/fetching_ip/src/libfetching_ip.a: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/build.make
libsrc/fetching_ip/src/libfetching_ip.a: libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library libfetching_ip.a"
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && $(CMAKE_COMMAND) -P CMakeFiles/fetching_ip.dir/cmake_clean_target.cmake
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fetching_ip.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/build: libsrc/fetching_ip/src/libfetching_ip.a
.PHONY : libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/build

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/clean:
	cd C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src && $(CMAKE_COMMAND) -P CMakeFiles/fetching_ip.dir/cmake_clean.cmake
.PHONY : libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/clean

libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/fetching_ip/src C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/fetching_ip/src/CMakeFiles/fetching_ip.dir/depend

