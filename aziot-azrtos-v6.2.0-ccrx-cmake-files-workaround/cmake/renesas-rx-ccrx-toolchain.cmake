# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/CMake-Compiler-RENESAS/Modules") # Tell CMake the path of support module for Renesas CC compilers.
set(CMAKE_C_COMPILER_ID RENESAS) # Tell CMake that the target compiler is one of Renesas CC compilers.
set(CMAKE_C_COMPILER_ID_RUN TRUE) # Tell CMake that the compiler detection process must be eliminated.

set(CMAKE_SYSTEM_NAME Generic)
#set(CMAKE_SYSTEM_PROCESSOR RX) # Do not set. The variable is reserved for future use and the value may change in the future.
#set(CMAKE_SYSTEM_ARCH RXv2)    # Do not set. The variable is reserved for future use and the value may change in the future.

# default to Debug build
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "Choose the type of build, options are: Debug Release." FORCE)
endif()

# do some windows specific logic
if(WIN32)
    set(TOOLCHAIN_EXT ".exe")
else()
    set(TOOLCHAIN_EXT "")
endif(WIN32)

find_program(COMPILER_ON_PATH "ccrx${TOOLCHAIN_EXT}")

if(DEFINED ENV{RX_CCRX_PATH}) 
    # use the environment variable first    
    file(TO_CMAKE_PATH $ENV{RX_CCRX_PATH} RX_TOOLCHAIN_PATH)
    message(STATUS "Using ENV variable RX_CCRX_PATH = ${RX_TOOLCHAIN_PATH}")
elseif(COMPILER_ON_PATH) 
    # then check on the current path
    get_filename_component(RX_TOOLCHAIN_PATH ${COMPILER_ON_PATH} DIRECTORY)
    message(STATUS "Using RX CC-RX from path = ${RX_TOOLCHAIN_PATH}")
else()
    message(FATAL_ERROR "Unable to find CC-RX. Either add to your PATH, or define RX_CCRX_PATH to the compiler location")
endif()

find_program(XCONV_ON_PATH "renesas_cc_converter${TOOLCHAIN_EXT}")

if(DEFINED ENV{RX_XCONV_PATH}) 
    # use the environment variable first    
    file(TO_CMAKE_PATH $ENV{RX_XCONV_PATH} RX_EXTERNAL_TOOLCHAIN_PATH)
    message(STATUS "Using ENV variable RX_XCONV_PATH = ${RX_EXTERNAL_TOOLCHAIN_PATH}")
elseif(XCONV_ON_PATH) 
    # then check on the current path
    get_filename_component(RX_EXTERNAL_TOOLCHAIN_PATH ${XCONV_ON_PATH} DIRECTORY)
    message(STATUS "Using e2 studio's X Converter from path = ${RX_TOOLCHAIN_PATH}")
else()
    # not found
    message(NOTICE
        "Warning: Unable to find e2 studio's X Converter. Either add to your PATH, or define RX_XCONV_PATH to the converter location\n"
        "Debugging with RX GDB is not available when the converter is not executed."
    )
endif()

set(CMAKE_C_COMPILER    ${RX_TOOLCHAIN_PATH}/ccrx${TOOLCHAIN_EXT})
set(CMAKE_CXX_COMPILER  ${RX_TOOLCHAIN_PATH}/ccrx${TOOLCHAIN_EXT})
set(CMAKE_ASM_COMPILER  ${RX_TOOLCHAIN_PATH}/asrx${TOOLCHAIN_EXT})
set(CMAKE_RENESAS_XCONVERTER  ${RX_TOOLCHAIN_PATH}renesas_cc_converter${TOOLCHAIN_EXT})

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(CMAKE_C_FLAGS   "${CPU_FLAGS} -nostuff=B -nomessage=21644,20010,23034,23035,20177,23033 -no_warning=20826 -debug -g_line -goptimize") # -type_size_access_to_volatile
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS}")
set(CMAKE_ASM_FLAGS "${CPU_FLAGS} -debug -goptimize")
set(CMAKE_LBG_FLAGS "-head=runtime,math,mathf,stdarg,stdio,stdlib,string,new")
set(CMAKE_EXE_LINKER_FLAGS "-vect=_undefined_interrupt_source_isr -debug -optimize=short_format,branch,symbol_delete -change_message=information=1010,1320")
