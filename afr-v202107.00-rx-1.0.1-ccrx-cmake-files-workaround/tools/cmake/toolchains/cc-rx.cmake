set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/CMake-Compiler-RENESAS/Modules") # Tell CMake the path of support module for Renesas CC compilers.
set(CMAKE_C_COMPILER_ID RENESAS) # Tell CMake that the target compiler is one of Renesas CC compilers.
set(CMAKE_C_COMPILER_ID_RUN TRUE) # Tell CMake that the compiler detection process must be eliminated.

include("${CMAKE_CURRENT_LIST_DIR}/find_compiler.cmake")

set(CMAKE_SYSTEM_NAME Generic)

# Find Renesas CC-RX.
afr_find_compiler(AFR_COMPILER_CC ccrx)
afr_find_compiler(AFR_COMPILER_CXX ccrx)
afr_find_compiler(AFR_COMPILER_ASM asrx)
afr_find_external_toolchain(AFR_RENESAS_XCONVERTER renesas_cc_converter)

# Specify the cross compiler.
set(CMAKE_C_COMPILER ${AFR_COMPILER_CC} CACHE FILEPATH "C compiler")
set(CMAKE_CXX_COMPILER ${AFR_COMPILER_CXX} CACHE FILEPATH "C++ compiler")
set(CMAKE_ASM_COMPILER ${AFR_COMPILER_ASM} CACHE FILEPATH "ASM compiler")
set(CMAKE_RENESAS_XCONVERTER ${AFR_RENESAS_XCONVERTER} CACHE FILEPATH "Renesas X Converter")

# Add target system root to cmake find path.
get_filename_component(AFR_COMPILER_DIR "${AFR_COMPILER_CC}" DIRECTORY)
get_filename_component(CMAKE_FIND_ROOT_PATH "${AFR_COMPILER_DIR}" DIRECTORY)

# Don't look for executable in target system prefix.
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# Look for includes and libraries only in the target system prefix.
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
