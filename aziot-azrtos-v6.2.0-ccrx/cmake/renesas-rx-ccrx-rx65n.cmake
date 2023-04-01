# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

# Define the CPU architecture for Threadx
set(THREADX_ARCH "rxv2")
set(THREADX_TOOLCHAIN "ccrx")

# Compiler flags needed to compile for this CPU
set(CPU_FLAGS "-isa=rxv2")

include(${CMAKE_CURRENT_LIST_DIR}/renesas-rx-ccrx-toolchain.cmake)
