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
CMAKE_SOURCE_DIR = C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata

# Utility rule file for coresightps_dcc_example.

# Include any custom commands dependencies for this target.
include CMakeFiles/coresightps_dcc_example.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/coresightps_dcc_example.dir/progress.make

CMakeFiles/coresightps_dcc_example:
	lopper -f -O C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/coresightps_dcc C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/hw_artifacts/ps7_cortexa9_0_baremetal.dts -- bmcmake_metadata_xlnx ps7_cortexa9_0 C:/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/coresightps_dcc_v1_9/examples drvcmake_metadata

coresightps_dcc_example: CMakeFiles/coresightps_dcc_example
coresightps_dcc_example: CMakeFiles/coresightps_dcc_example.dir/build.make
.PHONY : coresightps_dcc_example

# Rule to build all files generated by this target.
CMakeFiles/coresightps_dcc_example.dir/build: coresightps_dcc_example
.PHONY : CMakeFiles/coresightps_dcc_example.dir/build

CMakeFiles/coresightps_dcc_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/coresightps_dcc_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/coresightps_dcc_example.dir/clean

CMakeFiles/coresightps_dcc_example.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata C:/Users/monde/Documents/GitHub/nasa-CPU/Vitis_workspace/platform_fetching_ip/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/exmetadata/CMakeFiles/coresightps_dcc_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/coresightps_dcc_example.dir/depend

