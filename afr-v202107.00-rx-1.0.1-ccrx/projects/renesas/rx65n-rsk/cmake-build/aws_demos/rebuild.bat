@echo off
echo\
echo FreeRTOS AWS Reference Integrations - DEPRECATED
echo https://github.com/renesas/amazon-freertos
echo\
echo The executable and intermediate files will be built in the following folder.
echo\
echo %~dp0..\..\build
echo\
if exist "%~dp0../../../../../build\" (
  choice /N /M "The folder already exists. Is it OK to delete it? (Y/N)"
  echo\
  if errorlevel 2 goto :eof
  rd /S /Q "%~dp0../../../../../build\"
)

rem ---------------------------------------------------------------------
rem  Note: DebugComp, Internal and Utilities folder location of e2 studio
rem ---------------------------------------------------------------------
rem 
rem  Renesas' FAQ
rem 
rem  https://en-support.renesas.com/knowledgeBase/19891761
rem  https://ja-support.renesas.com/knowledgeBase/19851044

rem Generator which is used by CMake can be specified in this batch file as follow.
set GENERATOR=Ninja

cmake -B../../../../../build -S../../../../.. -G%GENERATOR% -DVENDOR=renesas -DBOARD=rx65n-rsk -DCOMPILER=cc-rx -DAFR_TOOLCHAIN_PATH=C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin -DAFR_EXTERNAL_TOOLCHAIN_PATH=C:/Renesas/e2studio64/SupportFiles/.eclipse/com.renesas.platform_733684649/Utilities/ccrx
cmake --build ../../../../../build
