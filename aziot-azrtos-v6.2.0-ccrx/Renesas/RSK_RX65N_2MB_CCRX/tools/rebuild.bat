@echo off
echo\
echo Getting Started with Azure RTOS and Azure IoT
echo https://github.com/azure-rtos/getting-started
echo\
echo The executable and intermediate files will be built in the following folder.
echo\
echo %~dp0..\..\build
echo\
if exist "%~dp0..\..\..\build\" (
  choice /N /M "The folder already exists. Is it OK to delete it? (Y/N)"
  echo\
  if errorlevel 2 goto :eof
  rd /S /Q "%~dp0..\..\..\build\"
)

set GENERATOR=Ninja

set RX_CCRX_PATH=C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin
set RX_XCONV_PATH=C:/Renesas/e2studio64/SupportFiles/.eclipse/com.renesas.platform_733684649/Utilities/ccrx

cmake -B../../../build -S.. -G"%GENERATOR%" -DCMAKE_BUILD_TYPE="RelWithDebInfo" -DCMAKE_TOOLCHAIN_FILE="../../cmake/renesas-rx-ccrx-rx65n.cmake"
cmake --build ../../../build

rem ---------------------------------------------------------------------
rem  Note: DebugComp, Internal and Utilities folder location of e2 studio
rem ---------------------------------------------------------------------
rem
rem  Renesas' FAQ
rem
rem  https://en-support.renesas.com/knowledgeBase/19891761
rem  https://ja-support.renesas.com/knowledgeBase/19851044

rem ---------------------------------------------------------------------
rem  Note: CMAKE_BUILD_TYPE
rem ---------------------------------------------------------------------
rem
rem The rebuild.bat files of the "Getting Started" doesn't set CMAKE_BUILD_TYPE. Insteadly toolchain files choose
rem "Debug" as the default build configuration in the case by the following code in toolchain files.
rem
rem # default to Debug build
rem if(NOT CMAKE_BUILD_TYPE)
rem     set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "Choose the type of build, options are: Debug Release." FORCE)
rem endif()
rem
rem The following CMake's online document says about CMake's native behavior.
rem
rem https://cmake.org/cmake/help/latest/manual/cmake-buildsystem.7.html#default-and-custom-configurations
rem 'The default value will often be none of the above standard configurations and will instead be an empty string.
rem A common misunderstanding is that this is the same as Debug, but that is not the case. Users should always
rem explicitly specify the build type instead to avoid this common problem.'
