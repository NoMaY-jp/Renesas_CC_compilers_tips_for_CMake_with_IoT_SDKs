# Renesas CC-RX compiler's tips for CMake with IoT SDKs of AWS and Microsoft Azure.

This repository is based on the following IoT SDKs and versions.

* FreeRTOS AWS Reference Integrations - DEPRECATED<br>
<https://github.com/renesas/amazon-freertos><br>
afr-v202107.00-rx-1.0.1

* Getting Started with Azure RTOS and Azure IoT<br>
<https://github.com/azure-rtos/getting-started><br>
azrtos_v6.2.0

The zip file of this repository's source code can be downloaded here.

* <https://github.com/NoMaY-jp/Renesas_CC_compilers_tips_for_CMake_with_IoT_SDKs/archive/refs/heads/main.zip>

The following source code folders are extracted from the zip file. (There are other folders just for confirming workaround tips easier.)

* afr-v202107.00-rx-1.0.1-ccrx

* aziot-azrtos-v6.2.0-ccrx

The source code needs the following tools.

* The commercial editions of CC-RX V2.03 or later<br>
If the free edition of CC-RX is used (for example, the free edition of V3.05 like me), after the evaluation period has expired, the program cannot be built due to the link size limitation of the free edition (like me).

* CMake 3.26.0 or later<br>
CMake can be downloaded here.<br>
<https://cmake.org/download/>

* Ninja or Make<br>
The repo version of ninja running on Windows is included here as a part of the SDK.<br>
aziot-azrtos-v6.2.0-ccrx/cmake/ninja.exe<br><br>
Also  Make can be used instead of Ninja.<br>
The Renesas version of GNU Make 4.0 running on Windows can be found in the Renesas e2 studio's Utilities folder according to the following FAQ:<br>
DebugComp, Internal and Utilities folder location of e2 studio<br>
<https://en-support.renesas.com/knowledgeBase/19891761><br><br>

## Build steps for Command Prompt

#### Note1:
When Ninja is used, there may be several minutes without any messages during the process of linking executable due to the execution of Renesas CC-RX's \`library generator\` actually generating or regenerating libraries as part of the process. Please wait for a while.

#### Note2:
Please extract the zip file in a short path folder such as:
```
C:/Renesas/IoT_SDKs
```
## FreeRTOS AWS Reference Integrations - DEPRECATED

* Change directory.
```
cd /d C:/Renesas/IoT_SDKs/afr-v202107.00-rx-1.0.1-ccrx/projects/renesas/rx65n-rsk/cmake-build/aws_demos
```
* Edit the following part of either or both batch files for your environment.
```
rebuild.bat <-- This is for Ninja.
rebuild_by_make.bat
```
```
set AFR_TOOLCHAIN_PATH=C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin
set AFR_EXTERNAL_TOOLCHAIN_PATH=C:/Renesas/e2studio64/SupportFiles/.eclipse/com.renesas.platform_733684649/Utilities/ccrx
```
* Run the batch file. (The following case is that the build folder already exists.)
```
>rebuild.bat

FreeRTOS AWS Reference Integrations - DEPRECATED
https://github.com/renesas/amazon-freertos

The executable and intermediate files will be built in the following folder.

C:\Renesas\IoT_SDKs\afr-v202107.00-rx-1.0.1-ccrx\projects\renesas\rx65n-rsk\cmake-build\aws_demos\..\..\build

The folder already exists. Is it OK to delete it? (Y/N) Y

-- The C compiler identification is RENESAS RX 3.5.0
-- The CXX compiler identification is RENESAS RX 3.5.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin/ccrx.exe - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin/ccrx.exe - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- The ASM compiler identification is RENESAS RX 3.5.0
-- Found assembler: C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin/asrx.exe
-- Could NOT find Git (missing: GIT_EXECUTABLE)
=========================Resolving dependencies==========================
module disabled: common_io
reason:          common_io::mcu_port is not defined by vendor.
dependency path: freertos_cli_plus_uart->common_io->common_io::mcu_port

module disabled: ble_hal
reason:          ble_hal::mcu_port is not defined by vendor.
dependency path: ble_hal->ble_hal::mcu_port

module disabled: posix
reason:          posix::mcu_port is not defined by vendor.
dependency path: posix->posix::mcu_port

module disabled: wifi
reason:          wifi::mcu_port is not defined by vendor.
dependency path: wifi->wifi::mcu_port


====================Configuration for FreeRTOS====================
  Version:                 202107.00
  Git version:             Unknown

Target microcontroller:
  vendor:                  Renesas
  board:                   Renesas Starter Kit+ for RX65N-2MB
  description:             The Renesas Starter Kit+ for RX65N-2MB connects to AWS IoT
                           Cloud using Ethernet
  family:                  RX65N
  data ram size:           640KB
  program memory size:     2MB

Host platform:
  OS:                      Windows-10.0.18363
  Toolchain:               cc-rx
  Toolchain path:          C:/Renesas/CS+/CC/CC-RX/V3.05.00
  External toolchain path: C:/Renesas/e2studio64/SupportFiles/.eclipse/com.renesas.platfor
                           m_733684649/Utilities/ccrx
  CMake generator:         Ninja

FreeRTOS modules:
  Modules to build:        backoff_algorithm, common, core_http, core_http_demo_
                           dependencies, core_json, core_mqtt, core_mqtt_agent,
                           core_mqtt_agent_demo_dependencies, core_mqtt_demo_
                           dependencies, crypto, dev_mode_key_provisioning,
                           device_defender, device_defender_demo_dependencies,
                           device_shadow, device_shadow_demo_dependencies, freertos_plus_
                           cli, freertos_plus_tcp, freertos_plus_tcp_utils, greengrass,
                           http_demo_helpers, jobs, jobs_demo_dependencies, kernel,
                           logging, mqtt_agent_interface, mqtt_demo_helpers,
                           mqtt_subscription_manager, ota, ota_demo_dependencies,
                           ota_demo_version, pkcs11, pkcs11_helpers, pkcs11_
                           implementation, pkcs11_utils, platform, secure_sockets, tls,
                           transport_interface_secure_sockets
  Enabled by user:         core_http_demo_dependencies, core_json, core_mqtt_agent_demo_
                           dependencies, core_mqtt_demo_dependencies, device_defender,
                           device_defender_demo_dependencies, device_shadow,
                           device_shadow_demo_dependencies, freertos_plus_cli,
                           greengrass, jobs, jobs_demo_dependencies, logging,
                           ota_demo_dependencies, pkcs11, pkcs11_helpers, pkcs11_
                           implementation, pkcs11_utils, platform, secure_sockets
  Enabled by dependency:   backoff_algorithm, common, core_http, core_mqtt,
                           core_mqtt_agent, crypto, demo_base, dev_mode_key_provisioning,
                           freertos, freertos_plus_tcp, freertos_plus_tcp_utils,
                           http_demo_helpers, kernel, mqtt_agent_interface,
                           mqtt_demo_helpers, mqtt_subscription_manager, ota,
                           ota_demo_version, pkcs11_mbedtls, secure_sockets_freertos_plus_
                           tcp, tls, transport_interface_secure_sockets, utils
  3rdparty dependencies:   jsmn, mbedtls, pkcs11, tinycbor
  Available demos:         demo_core_http, demo_core_mqtt, demo_core_mqtt_agent,
                           demo_device_defender, demo_device_shadow, demo_greengrass_
                           connectivity, demo_jobs, demo_ota_core_http, demo_ota_core_
                           mqtt, demo_tcp
  Available tests:
=========================================================================
```
## Getting Started with Azure RTOS and Azure IoT

* Change directory.
```
cd /d C:/Renesas/IoT_SDKs/aziot-azrtos-v6.2.0-ccrx/Renesas/RSK_RX65N_2MB_CCRX/tools
```
* Edit the following part of either or both batch files for your environment.
```
rebuild.bat <-- This is for Ninja.
rebuild_by_make.bat
```
```
set RX_CCRX_PATH=C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin
set RX_XCONV_PATH=C:/Renesas/e2studio64/SupportFiles/.eclipse/com.renesas.platform_733684649/Utilities/ccrx
```
* Run the batch file. (The following case is that the build folder already exists.)
```
>rebuild.bat

Getting Started with Azure RTOS and Azure IoT
https://github.com/azure-rtos/getting-started

The executable and intermediate files will be built in the following folder.

C:\Renesas\IoT_SDKs\aziot-azrtos-v6.2.0-ccrx\Renesas\RSK_RX65N_2MB_CCRX\tools\..\..\..\build

The folder already exists. Is it OK to delete it? (Y/N) Y

-- Using ENV variable RX_CCRX_PATH = C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin
-- Using ENV variable RX_XCONV_PATH = C:/Renesas/e2studio64/SupportFiles/.eclipse/com.renesas.platform_733684649/Utilities/ccrx
-- Using ENV variable RX_CCRX_PATH = C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin
-- Using ENV variable RX_XCONV_PATH = C:/Renesas/e2studio64/SupportFiles/.eclipse/com.renesas.platform_733684649/Utilities/ccrx
-- The C compiler identification is RENESAS RX 3.5.0
-- The ASM compiler identification is RENESAS RX 3.5.0
-- Found assembler: C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin/asrx.exe
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin/ccrx.exe - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- THREADX_ARCH: rxv2
-- THREADX_TOOLCHAIN: ccrx
-- Using custom tx_user.h file from C:/Renesas/IoT_SDKs/aziot-azrtos-v6.2.0-ccrx/Renesas/RSK_RX65N_2MB_CCRX/lib/threadx/tx_user.h
-- NXD_ENABLE_AZURE_IOT - defined
-- Read version from C:/Renesas/IoT_SDKs/aziot-azrtos-v6.2.0-ccrx/shared/lib/netxduo/addons/azure_iot/azure-sdk-for-c/sdk/inc/azure/core/az_version.h
-- AZ_SDK_VERSION_MAJOR 1
-- AZ_SDK_VERSION_MINOR 3
-- AZ_SDK_VERSION_PATCH 2
-- AZ_SDK_VERSION_PRERELEASE
-- The CXX compiler identification is RENESAS RX 3.5.0
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin/ccrx.exe - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
Target Distribution Undefined, setting default 'RTOS_BASE'
Seting distribution RTOS_BASE
Merging platform asc_config.h.in
-- target architecture: GENERIC
-- setTargetCompileOptions for target asc_security_core
-- setTargetCompileOptions for target iot_security_module
-- Using custom nx_user.h file from C:/Renesas/IoT_SDKs/aziot-azrtos-v6.2.0-ccrx/Renesas/RSK_RX65N_2MB_CCRX/lib/netxduo/nx_user.h
```
<br>

## Build steps for VSCode

#### Note1:
When Ninja is used, there may be several minutes without any messages during the process of linking executable due to the execution of Renesas CC-RX's \`library generator\` actually generating or regenerating libraries as part of the process. Please wait for a while.

#### Note2:
Please extract the zip file in a short path folder such as:
```
C:/Renesas/IoT_SDKs
```
#### Note3:
The following files other than cmake files are necessary for VSCode and LLVM \`clangd\` language server:
```
afr-v202107.00-rx-1.0.1-ccrx/.vscode/settings.json
afr-v202107.00-rx-1.0.1-ccrx/.vscode/cmake-kits.json
afr-v202107.00-rx-1.0.1-ccrx/.vscode/c_cpp_intellisense_helper.h
afr-v202107.00-rx-1.0.1-ccrx/.clangd
aziot-azrtos-v6.2.0-ccrx/.vscode/settings.json
aziot-azrtos-v6.2.0-ccrx/.vscode/cmake-kits.json
aziot-azrtos-v6.2.0-ccrx/.vscode/c_cpp_intellisense_helper.h
aziot-azrtos-v6.2.0-ccrx/.clangd
```
## FreeRTOS AWS Reference Integrations - DEPRECATED

* Open the following folder in the VSCode.
```
C:\Renesas\IoT_SDKs\afr-v202107.00-rx-1.0.1-ccrx
```
* Edit the following part of the cmake-kits.json for your environment.
```
C:\Renesas\IoT_SDKs\afr-v202107.00-rx-1.0.1-ccrx\.vscode\cmake-kits.json
```
```
        "preferredGenerator": {
            "name": "Ninja"
        },
         "environmentVariables": {
            "AFR_TOOLCHAIN_PATH": "C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin",
            "AFR_EXTERNAL_TOOLCHAIN_PATH": "C:/Renesas/e2studio64/SupportFiles/.eclipse/com.renesas.platform_733684649/Utilities/ccrx",
        },
```
* Select the following kit for the active kit in the VSCode.
```
Renesas RX65N CC-RX Kit
```
* Select RelWithDebInfo for the current build variant in the VSCode.
```
RelWithDebInfo
```
* Press F7 key to start build along with preceding configure step.<br><br>

## Getting Started with Azure RTOS and Azure IoT

* Open the following folder in the VSCode.
```
C:\Renesas\IoT_SDKs\aziot-azrtos-v6.2.0-ccrx
```
* Edit the following part of cmake-kits.json for your environment.
```
C:\Renesas\IoT_SDKs\aziot-azrtos-v6.2.0-ccrx\.vscode\cmake-kits.json
```
```
        "preferredGenerator": {
            "name": "Ninja"
        },
        "environmentVariables": {
            "RX_CCRX_PATH": "C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin",
            "RX_XCONV_PATH": "C:/Renesas/e2studio64/SupportFiles/.eclipse/com.renesas.platform_733684649/Utilities/ccrx"
        }
```
* Select the following kit for the active kit in the VSCode.
```
Renesas RX65N CC-RX Kit
```
* Select RelWithDebInfo for the current build variant in the VSCode.
```
RelWithDebInfo
```
* Press F7 key to start build along with preceding configure step.<br><br>

## Build steps for Visual Studio (Visual Studio Community 2022 17.5.3)

#### Note1:
When Ninja is used, there may be several minutes without any messages during the process of linking executable due to the execution of Renesas CC-RX's \`library generator\` actually generating or regenerating libraries as part of the process. Please wait for a while.

#### Note2:
Please extract the zip file in a short path folder such as:
```
C:/Renesas/IoT_SDKs
```
#### Note3:
The following files other than cmake files are necessary for Visual Studio and its \`IntelliSence\` engine:
```
afr-v202107.00-rx-1.0.1-ccrx/CMakeSettings.json
afr-v202107.00-rx-1.0.1-ccrx/.vs/CMakeWorkspaceSettings.json
afr-v202107.00-rx-1.0.1-ccrx/.vs/ProjectSettings.json
afr-v202107.00-rx-1.0.1-ccrx/.vs/c_cpp_intellisense_helper.h
aziot-azrtos-v6.2.0-ccrx/Renesas/RSK_RX65N_2MB_CCRX/CMakeSettings.json
aziot-azrtos-v6.2.0-ccrx/.vs/CMakeWorkspaceSettings.json
aziot-azrtos-v6.2.0-ccrx/.vs/ProjectSettings.json
aziot-azrtos-v6.2.0-ccrx/.vs/c_cpp_intellisense_helper.h
```
## FreeRTOS AWS Reference Integrations - DEPRECATED

* Open the following folder in the Visual Studio.
```
C:\Renesas\IoT_SDKs\afr-v202107.00-rx-1.0.1-ccrx
```
* Edit the following part of the CMakeSettings.json for your environment.
```
C:\Renesas\IoT_SDKs\afr-v202107.00-rx-1.0.1-ccrx\CMakeSettings.json
```
```
      "generator": "Ninja",
      "environments": [
        {
          "AFR_TOOLCHAIN_PATH": "C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin",
          "AFR_EXTERNAL_TOOLCHAIN_PATH": "C:/Renesas/e2studio64/SupportFiles/.eclipse/com.renesas.platform_733684649/Utilities/ccrx"
        }
      ],
```
* Press F6 key to start build along with preceding configure step.<br><br>

## Getting Started with Azure RTOS and Azure IoT

* Open the following folder in the Visual Studio.
```
C:\Renesas\IoT_SDKs\aziot-azrtos-v6.2.0-ccrx
```
* Edit the following part of the CMakeSettings.json for your environment.
```
C:\Renesas\IoT_SDKs\aziot-azrtos-v6.2.0-ccrx\Renesas\RSK_RX65N_2MB_CCRX\CMakeSettings.json
```
```
      "generator": "Ninja",
      "environments": [
        {
          "RX_CCRX_PATH": "C:/Renesas/CS+/CC/CC-RX/V3.05.00/bin",
          "RX_XCONV_PATH": "C:/Renesas/e2studio64/SupportFiles/.eclipse/com.renesas.platform_733684649/Utilities/ccrx"
        }
      ],
```
* Press F6 key to start build along with preceding configure step.<br><br>

## Which cmake files are modified and which cmake files are added

Just for confirming workaround tips easier, the following folders are included in the zip file.

* afr-v202107.00-rx-1.0.1-ccrx-cmake-files-original
* afr-v202107.00-rx-1.0.1-ccrx-cmake-files-workaround
* aziot-azrtos-v6.2.0-ccrx-cmake-files-original
* aziot-azrtos-v6.2.0-ccrx-cmake-files-workaround

## FreeRTOS AWS Reference Integrations - DEPRECATED

Modified cmake files:
```
CMakeLists.txt
tools/cmake/toolchains/cc-rx.cmake
tools/cmake/toolchains/find_compiler.cmake
vendors/renesas/boards/rx65n-rsk/CMakeLists.txt
```
Modified C source files (due to a \`header file\` name conflict):
```
vendors/renesas/amazon_freertos_common/entropy_hardware_poll.c
vendors/renesas/boards/rx65n-rsk/ports/pkcs11/core_pkcs11_pal.c
```
Added cmake files:
```
tools/cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-ASM.cmake
tools/cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-AssemblerWrapper.cmake
tools/cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-C.cmake
tools/cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-CompilerWrapper.cmake
tools/cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-CXX.cmake
tools/cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-DetermineCompiler.cmake
tools/cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-FindBinUtils.cmake
tools/cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-LibGeneratorWrapper.cmake
tools/cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-LinkerWrapper.cmake
tools/cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-XConverterWrapper.cmake
tools/cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS.cmake
```
## Getting Started with Azure RTOS and Azure IoT

Modified cmake file:
```
cmake/utilities.cmake
```
Added cmake files:
```
shared/lib/netxduo/ports/rxv2/ccrx/CMakeLists.txt
shared/lib/threadx/ports/rxv2/ccrx/CMakeLists.txt
Renesas/RSK_RX65N_2MB_CCRX/CMakeLists.txt
Renesas/RSK_RX65N_2MB_CCRX/app/CMakeLists.txt
Renesas/RSK_RX65N_2MB_CCRX/lib/CMakeLists.txt
Renesas/RSK_RX65N_2MB_CCRX/lib/netx_driver/CMakeLists.txt
Renesas/RSK_RX65N_2MB_CCRX/lib/rx_driver_package/CMakeLists.txt
cmake/renesas-rx-ccrx-rx65n.cmake
cmake/renesas-rx-ccrx-toolchain.cmake
cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-ASM.cmake
cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-AssemblerWrapper.cmake
cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-C.cmake
cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-CompilerWrapper.cmake
cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-CXX.cmake
cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-DetermineCompiler.cmake
cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-FindBinUtils.cmake
cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-LibGeneratorWrapper.cmake
cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-LinkerWrapper.cmake
cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS-XConverterWrapper.cmake
cmake/CMake-Compiler-RENESAS/Modules/Compiler/RENESAS.cmake
```
