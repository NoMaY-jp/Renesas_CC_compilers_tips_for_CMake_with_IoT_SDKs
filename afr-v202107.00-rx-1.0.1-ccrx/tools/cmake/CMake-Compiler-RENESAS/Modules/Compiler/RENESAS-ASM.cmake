# This file is processed when the Renesas Assembler is used
#
include(Compiler/Renesas)

### This file is processed when the IAR Assembler is used
##
##include(Compiler/IAR)
##
##cmake_policy(PUSH)
##cmake_policy(SET CMP0057 NEW) # if IN_LIST
##
##set(_CMAKE_IAR_ITOOLS "ARM" "RH850"  "RL78" "RX" "RISC-V" "STM8")
##set(_CMAKE_IAR_XTOOLS "AVR" "MSP430" "V850" "8051")
##
##set(_CMAKE_IAR_ASM_SILENT   "RH850"  "RL78" "RX" "RISC-V" "STM8")
##if("${CMAKE_ASM${ASM_DIALECT}_COMPILER_ARCHITECTURE_ID}" IN_LIST _CMAKE_IAR_ASM_SILENT)
##  set(_CMAKE_IAR_SILENCER_FLAG " --silent")
##else()
##  set(_CMAKE_IAR_SILENCER_FLAG " -S")
##endif()
##
##string(APPEND CMAKE_ASM_FLAGS_INIT " ")
##string(APPEND CMAKE_ASM_FLAGS_DEBUG_INIT " -r")
##string(APPEND CMAKE_ASM_FLAGS_MINSIZEREL_INIT " -DNDEBUG")
##string(APPEND CMAKE_ASM_FLAGS_RELEASE_INIT " -DNDEBUG")
##string(APPEND CMAKE_ASM_FLAGS_RELWITHDEBINFO_INIT " -r -DNDEBUG")
##
##set(CMAKE_ASM_COMPILE_OBJECT "<CMAKE_ASM_COMPILER> ${_CMAKE_IAR_SILENCER_FLAG} <SOURCE> <DEFINES> <INCLUDES> <FLAGS> -o <OBJECT>")
##
##if("${CMAKE_ASM${ASM_DIALECT}_COMPILER_ARCHITECTURE_ID}" IN_LIST _CMAKE_IAR_ITOOLS)
##  __compiler_iar_ilink(ASM)
##  set(CMAKE_ASM_SOURCE_FILE_EXTENSIONS s;asm;msa;S)
##
##elseif("${CMAKE_ASM${ASM_DIALECT}_COMPILER_ARCHITECTURE_ID}" IN_LIST _CMAKE_IAR_XTOOLS)
##  __compiler_iar_xlink(ASM)
##  # AVR=s90, MSP430=s43, V850=s85, 8051=s51
##  set(CMAKE_ASM_SOURCE_FILE_EXTENSIONS s90;s43;s85;s51;asm;msa)
##
##else()
##  message(FATAL_ERROR "CMAKE_ASM${ASM_DIALECT}_COMPILER_ARCHITECTURE_ID not detected. This should be automatic.")
##
##endif()
##
##unset(_CMAKE_IAR_ITOOLS)
##unset(_CMAKE_IAR_XTOOLS)
##unset(_CMAKE_IAR_ASM_SILENT)
##unset(_CMAKE_IAR_SILENCER_FLAG)
##
##cmake_policy(POP)

if(NOT CMAKE_ASM${ASM_DIALECT}_COMPILER_ARCHITECTURE_ID)
  message(FATAL_ERROR "CMAKE_ASM${ASM_DIALECT}_COMPILER_ARCHITECTURE_ID not detected. This should be automatic.")
elseif(CMAKE_ASM${ASM_DIALECT}_COMPILER_ARCHITECTURE_ID STREQUAL "RX")
  # Nothing to do here.
elseif(CMAKE_ASM${ASM_DIALECT}_COMPILER_ARCHITECTURE_ID STREQUAL "RL78")
  # Nothing to do here.
elseif(CMAKE_ASM${ASM_DIALECT}_COMPILER_ARCHITECTURE_ID STREQUAL "RH850")
  # Nothing to do here.
else()
  # Never come here because of the architecure detection code in the `Modules/CMakeDetermineASMCompiler.cmake`.
endif()

if(NOT CMAKE_ASM${ASM_DIALECT}_COMPILER_VERSION)
  message(FATAL_ERROR "CMAKE_ASM${ASM_DIALECT}_COMPILER_VERSION not detected. This should be automatic.")
endif()

if(CMAKE_ASM${ASM_DIALECT}_COMPILER_ARCHITECTURE_ID STREQUAL "RX")
  if(CMAKE_ASM${ASM_DIALECT}_COMPILER_VERSION VERSION_LESS 2.0)
    message(FATAL_ERROR "Renesas RX Family Assembler version ${CMAKE_ASM${ASM_DIALECT}_COMPILER_VERSION} is not supported by CMake.")
  endif()
endif()

__compiler_renesas(ASM${ASM_DIALECT})

if((NOT DEFINED CMAKE_DEPENDS_USE_COMPILER OR CMAKE_DEPENDS_USE_COMPILER)
    AND CMAKE_GENERATOR MATCHES "Makefiles|WMake"
    AND CMAKE_DEPFILE_FLAGS_ASM${ASM_DIALECT}
    )
  # dependencies are computed by the compiler itself
  set(CMAKE_ASM${ASM_DIALECT}_DEPFILE_FORMAT gcc)
  set(CMAKE_ASM${ASM_DIALECT}_DEPENDS_USE_COMPILER TRUE)
endif()