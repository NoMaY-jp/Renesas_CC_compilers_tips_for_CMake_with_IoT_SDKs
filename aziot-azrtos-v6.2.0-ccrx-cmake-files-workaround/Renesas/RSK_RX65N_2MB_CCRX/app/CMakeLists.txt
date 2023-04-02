# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

set(LINKER_SCRIPT "${CMAKE_CURRENT_LIST_DIR}/startup/ccrx/linker_command.sub")

set(SOURCES
    startup/${THREADX_TOOLCHAIN}/tx_initialize_low_level.src

    legacy/mqtt.c
    azure_config.h
    nx_client.c
    board_init.c
    console.c
    main.c    
)

add_executable(${PROJECT_NAME} ${SOURCES})

target_link_libraries(${PROJECT_NAME} 
    PUBLIC
        rx_driver_package
        app_common
        jsmn
        netx_driver

        azrtos::threadx
        azrtos::netxduo
)

target_include_directories(${PROJECT_NAME} 
    PUBLIC 
        .
)

if(CMAKE_C_COMPILER_ID STREQUAL "IAR")
    message(FATAL_ERROR, "IAR is not currently implemented for this device")
elseif(CMAKE_C_COMPILER_ID STREQUAL "GNU")
    set_target_linker(${PROJECT_NAME} linker_script.ld)
    target_link_options(${PROJECT_NAME} PRIVATE -Wl,-e_PowerON_Reset)
elseif(CMAKE_C_COMPILER_ID STREQUAL "RENESAS")
    set_target_linker(${PROJECT_NAME} ${LINKER_SCRIPT})
endif()

post_build(${PROJECT_NAME})
