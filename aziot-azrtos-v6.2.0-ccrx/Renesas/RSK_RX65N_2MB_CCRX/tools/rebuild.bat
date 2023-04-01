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

rem Generator which is used by CMake can be specified in this batch file as follow.
set GENERATOR=Ninja

rem Toolchain paths can be specified in this batch file as follow.
set RX_CCRX_PATH=C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin
set RX_XCONV_PATH=C:/Renesas/e2studio64/SupportFiles/.eclipse/com.renesas.platform_733684649/Utilities/ccrx

rem Not "Debug" but "Release" is used in this batch file as follow.
cmake -B../../../build -S.. -G%GENERATOR% -DCMAKE_TOOLCHAIN_FILE="../../cmake/renesas-rx-ccrx-rx65n.cmake" -DCMAKE_BUILD_TYPE="Release"
cmake --build ../../../build
