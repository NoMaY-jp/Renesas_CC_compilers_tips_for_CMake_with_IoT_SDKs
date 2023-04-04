# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

cmake_minimum_required(VERSION 3.26 FATAL_ERROR)
set(CMAKE_C_STANDARD 99)

set(GSG_BASE_DIR ${CMAKE_SOURCE_DIR}/../..)
set(SHARED_SRC_DIR ${GSG_BASE_DIR}/shared/src)
set(SHARED_LIB_DIR ${GSG_BASE_DIR}/shared/lib)

# use the repo version of ninja on Windows as there is no Ninja installer
if(WIN32)
    if(CMAKE_GENERATOR STREQUAL "Ninja")
        set(CMAKE_MAKE_PROGRAM ${GSG_BASE_DIR}/cmake/ninja CACHE STRING "Ninja location")
    endif()
endif()

# Set the toolchain if not defined
if(NOT CMAKE_TOOLCHAIN_FILE)
    set(CMAKE_TOOLCHAIN_FILE "${GSG_BASE_DIR}/cmake/renesas-rx-ccrx-rx65n.cmake")
endif()

include(${GSG_BASE_DIR}/cmake/utilities.cmake)

# Define the Project
project(rx65n_azure_iot C ASM)

add_subdirectory(${SHARED_SRC_DIR} shared_src)
add_subdirectory(lib)
add_subdirectory(app)
