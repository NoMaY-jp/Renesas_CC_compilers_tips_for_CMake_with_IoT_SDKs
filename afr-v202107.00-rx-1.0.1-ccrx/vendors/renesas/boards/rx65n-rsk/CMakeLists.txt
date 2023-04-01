# Set variables.
set(renesas_dir "${AFR_VENDORS_DIR}/renesas")
set(renesas_amazon_freertos_common_dir "${renesas_dir}/amazon_freertos_common")
set(renesas_amazon_freertos_compiler_support_dir "${renesas_amazon_freertos_common_dir}/compiler_support/ccrx")
set(renesas_amazon_freertos_network_support_dir "${renesas_amazon_freertos_common_dir}/network_support/onchip_rx_ether")
set(rx_driver_package_dir "${renesas_dir}/rx_driver_package/v133")
set(rx65nrsk_dir "${renesas_dir}/boards/rx65n-rsk")
set(rx65nrsk_ports_dir "${rx65nrsk_dir}/ports")

if(AFR_IS_TESTING)
    set(rx65nrsk_aws_dir "${rx65nrsk_dir}/aws_tests")
    set(exe_target aws_tests)
else()
    set(rx65nrsk_aws_dir "${rx65nrsk_dir}/aws_demos")
    set(exe_target aws_demos)
endif()

# -------------------------------------------------------------------------------------------------
# FreeRTOS Console metadata
# -------------------------------------------------------------------------------------------------

afr_set_board_metadata(ID "Renesas-RX65N-RSK")
afr_set_board_metadata(DISPLAY_NAME "Renesas Starter Kit+ for RX65N-2MB")
afr_set_board_metadata(DESCRIPTION "The Renesas Starter Kit+ for RX65N-2MB connects to AWS IoT Cloud using Ethernet")
afr_set_board_metadata(VENDOR_NAME "Renesas")
afr_set_board_metadata(FAMILY_NAME "RX65N")
afr_set_board_metadata(IS_ACTIVE "TRUE")
afr_set_board_metadata(CODE_SIGNER "AmazonFreeRTOS-Default")
afr_set_board_metadata(DATA_RAM_MEMORY "640KB")
afr_set_board_metadata(PROGRAM_MEMORY "2MB")
afr_set_board_metadata(SUPPORTED_IDE "E2Studio")
afr_set_board_metadata(RECOMMENDED_IDE "E2Studio")
afr_set_board_metadata(IDE_E2Studio_NAME "e2 studio")
afr_set_board_metadata(IDE_E2Studio_COMPILER "CCRX")
afr_set_board_metadata(KEY_IMPORT_PROVISIONING "TRUE")

afr_set_board_metadata(IDE_E2Studio_PROJECT_LOCATION "${AFR_ROOT_DIR}/projects/renesas/rx65n-rsk/e2studio/aws_demos")
afr_set_board_metadata(AWS_DEMOS_CONFIG_FILES_LOCATION "${CMAKE_CURRENT_LIST_DIR}/aws_demos/config_files")


# -------------------------------------------------------------------------------------------------
# Compiler settings
# -------------------------------------------------------------------------------------------------
afr_mcu_port(compiler)

set(compiler_flags
    -isa=rxv2
    -branch=32
    -preinclude=${renesas_amazon_freertos_compiler_support_dir}/implicitlyinclude.h
    -lang=c99
    -nomessage=21644,20010,23034,23035,20177,23033
    -debug -g_line
    #-type_size_access_to_volatile
    -goptimize
)

target_compile_definitions(
    afr_3rdparty_mbedtls
    PUBLIC
        MBEDTLS_CONFIG_FILE=<aws_mbedtls_config.h$<ANGLE-R>
        CONFIG_MEDTLS_USE_AFR_MEMORY
)

target_include_directories(
    afr_3rdparty_mbedtls
    PUBLIC
        "${renesas_dir}/amazon_freertos_common/compiler_support/ccrx"
)

# Compiler flags.
target_compile_options(
    AFR::compiler::mcu_port
    INTERFACE
        $<$<COMPILE_LANGUAGE:C>:${compiler_flags}>
)

set(assembler_flags
    -isa=rxv2
    -debug
    -goptimize
)

# Assembler flags
target_compile_options(
    AFR::compiler::mcu_port
    INTERFACE
        $<$<COMPILE_LANGUAGE:ASM>:${assembler_flags}>
)

set(library_generator_flags
    -head=runtime,ctype,math,mathf,stdarg,stdio,stdlib,string,new,fenv,inttypes,wchar,wctype
)

# Library Generator flags
target_library_generate_options(
    AFR::compiler::mcu_port
    INTERFACE
        ${library_generator_flags}
)

set(linker_flags
    -cpu=RAM=00000000-0003ffff,FIX=00080000-00083fff,FIX=00086000-00087fff,FIX=00088000-0009ffff,FIX=000a0000-000a3fff,RAM=000a4000-000a5fff,FIX=000a6000-000bffff,FIX=000c0000-000dffff,FIX=000e0000-000fffff,ROM=00100000-00107fff,FIX=007fc000-007fcfff,FIX=007fe000-007fffff,RAM=00800000-0085ffff,RAM=fe7f5d00-fe7f5d7f,RAM=fe7f7d70-fe7f7d9f,ROM=ffe00000-ffffffff
    -start=SU,SI,R_1,R_2,R,RPFRAM2/04,C_BOOTLOADER_KEY_STORAGE*/0100000,C_PKCS11_STORAGE*/0100800,C_SYSTEM_CONFIG*/0104800,B_ETHERNET_BUFFERS_1,B_RX_DESC_1,B_TX_DESC_1,B,B_1,B_2/0800000,C_1,C_2,C,C$*,D*,W*,L,P*/0FFF00300,EXCEPTVECT/0FFFFFF80,RESETVECT/0FFFFFFFC
    -rom=D=R,D_1=R_1,D_2=R_2,PFRAM2=RPFRAM2
    -vect=_undefined_interrupt_source_isr
    -list -show=all -total_size
    -debug
####    -optimize=short_format,branch,symbol_delete
-nooptimize
    -change_message=information=1010,1320
)

# Linker flags
target_link_options(
    AFR::compiler::mcu_port
    INTERFACE
        ${linker_flags}
)

# -------------------------------------------------------------------------------------------------
# FreeRTOS portable layers
# -------------------------------------------------------------------------------------------------

# Kernel
afr_mcu_port(kernel)
target_sources(
    AFR::kernel::mcu_port
    INTERFACE
        "${AFR_KERNEL_DIR}/portable/MemMang/heap_4.c"
        "${AFR_KERNEL_DIR}/portable/Renesas/RX600v2/port.c"
        "${AFR_KERNEL_DIR}/portable/Renesas/RX600v2/portmacro.h"
        "${AFR_KERNEL_DIR}/portable/Renesas/RX600v2/port_asm.src"
)

set(kernel_inc_dirs
    "${rx65nrsk_aws_dir}/config_files"
    "${rx65nrsk_aws_dir}/src/smc_gen/r_config"
    "${rx65nrsk_aws_dir}/src/smc_gen/r_pincfg"
    "${rx_driver_package_dir}/r_bsp"
    "${rx_driver_package_dir}/r_bsp/board/generic_rx65n"
    "${renesas_amazon_freertos_common_dir}"
    "${AFR_KERNEL_DIR}/portable/Renesas/RX600v2"
    "$<IF:${AFR_IS_TESTING},${AFR_TESTS_DIR},${AFR_DEMOS_DIR}>/include"
)

target_include_directories(
    AFR::kernel::mcu_port
    INTERFACE $<$<NOT:$<COMPILE_LANGUAGE:ASM>>:${kernel_inc_dirs}>
)

# FreeRTOS Plus TCP
afr_mcu_port(freertos_plus_tcp)
target_sources(
    AFR::freertos_plus_tcp::mcu_port
    INTERFACE
        "${AFR_MODULES_FREERTOS_PLUS_DIR}/standard/freertos_plus_tcp/portable/BufferManagement/BufferAllocation_2.c"
        "${AFR_MODULES_FREERTOS_PLUS_DIR}/standard/freertos_plus_tcp/portable/NetworkInterface/RX/ether_callback.c"
        "${AFR_MODULES_FREERTOS_PLUS_DIR}/standard/freertos_plus_tcp/portable/NetworkInterface/RX/NetworkInterface.c"
        # Header files added to the target so that these are available in code downloaded from the FreeRTOS console.
        "${AFR_MODULES_FREERTOS_PLUS_DIR}/standard/freertos_plus_tcp/portable/Compiler/Renesas/pack_struct_end.h"
        "${AFR_MODULES_FREERTOS_PLUS_DIR}/standard/freertos_plus_tcp/portable/Compiler/Renesas/pack_struct_start.h"
)

target_include_directories(
    AFR::freertos_plus_tcp::mcu_port
    INTERFACE
        "${AFR_MODULES_FREERTOS_PLUS_DIR}/standard/freertos_plus_tcp/portable/Compiler/Renesas"
        "${AFR_MODULES_FREERTOS_PLUS_DIR}/standard/freertos_plus_tcp/include"
        "${rx_driver_package_dir}/r_ether_rx"
)

# PKCS11
afr_mcu_port(pkcs11_implementation)
target_sources(
    AFR::pkcs11_implementation::mcu_port
    INTERFACE
        "${rx65nrsk_ports_dir}/pkcs11/core_pkcs11_pal.c"
)

target_include_directories(
    AFR::pkcs11_implementation::mcu_port
    INTERFACE
        "${rx_driver_package_dir}/r_flash_rx"
        "${rx_driver_package_dir}/r_flash_rx/src"
        "${rx_driver_package_dir}/r_flash_rx/src/flash_type_4"
        "${rx_driver_package_dir}/r_flash_rx/src/targets"
)

target_link_libraries(
    AFR::pkcs11_implementation::mcu_port
    INTERFACE
        3rdparty::mbedtls
        AFR::pkcs11_mbedtls
)

# Secure sockets
afr_mcu_port(secure_sockets)
target_link_libraries(
    AFR::secure_sockets::mcu_port
    INTERFACE AFR::secure_sockets_freertos_plus_tcp
)

# Over-the-air Updates
afr_mcu_port(ota)
target_sources(
    AFR::ota::mcu_port
    INTERFACE
        "${rx65nrsk_ports_dir}/ota_pal_for_aws/ota_pal.c"
        "${rx65nrsk_ports_dir}/ota_pal_for_aws/ota_pal.h"
)

target_include_directories(
    AFR::ota::mcu_port
    INTERFACE
        "${rx65nrsk_ports_dir}/ota_pal_for_aws"
        "${rx_driver_package_dir}/r_flash_rx"
        "${rx_driver_package_dir}/r_flash_rx/src"
        "${rx_driver_package_dir}/r_flash_rx/src/flash_type_4"
        "${rx_driver_package_dir}/r_flash_rx/src/targets"
)

target_link_libraries(
    AFR::ota::mcu_port
    INTERFACE
        AFR::crypto
        AFR::ota
        AFR::pkcs11
)

if(AFR_ENABLE_TESTS)
    target_include_directories(
        AFR::ota::mcu_port
        INTERFACE "${PROJECT_SOURCE_DIR}/tests/integration_test/ota_pal"
    )
endif()

# -------------------------------------------------------------------------------------------------
# FreeRTOS demos and tests
# -------------------------------------------------------------------------------------------------

afr_glob_src(renesas_amazon_freertos_common_src DIRECTORY "${renesas_amazon_freertos_common_dir}")
afr_glob_src(renesas_amazon_freertos_compiler_support_src DIRECTORY "${renesas_amazon_freertos_compiler_support_dir}")
afr_glob_src(renesas_amazon_freertos_network_support_src DIRECTORY "${renesas_amazon_freertos_network_support_dir}")

set(renesas_afr_common_src
        ${renesas_amazon_freertos_common_src}
        ${renesas_amazon_freertos_compiler_support_src}
        ${renesas_amazon_freertos_network_support_src}
)

set(renesas_afr_common_include
    "${renesas_amazon_freertos_common_dir}"
    "${renesas_amazon_freertos_compiler_support_dir}"
    "${renesas_amazon_freertos_network_support_dir}"
)

# It is better to avoid using `RECURSE` for `rx_driver_package_dir` because this folder contains source files
# which are not necessary for RX65N's target and flash type.
afr_glob_src(rbsp_board_genericrx65n_src DIRECTORY "${rx_driver_package_dir}/r_bsp/board/generic_rx65n")
afr_glob_src(rbsp_mcu_all_src DIRECTORY "${rx_driver_package_dir}/r_bsp/mcu/all")
afr_glob_src(rbsp_mcu_rx65n_src DIRECTORY "${rx_driver_package_dir}/r_bsp/mcu/rx65n")

# r_cmt_rx, r_riic_rx, r_sci_iic_rx are excluded
afr_glob_src(rbyteq_src DIRECTORY "${rx_driver_package_dir}/r_byteq/src")
afr_glob_src(retherrx_src DIRECTORY "${rx_driver_package_dir}/r_ether_rx/src")
afr_glob_src(retherrx_phy_src DIRECTORY "${rx_driver_package_dir}/r_ether_rx/src/phy")
afr_glob_src(retherrx_target_src DIRECTORY "${rx_driver_package_dir}/r_ether_rx/src/targets/rx65n")
afr_glob_src(rflashrx_src DIRECTORY "${rx_driver_package_dir}/r_flash_rx/src")
afr_glob_src(rflashrx_flashtype_src DIRECTORY "${rx_driver_package_dir}/r_flash_rx/src/flash_type_4")
afr_glob_src(rs12adrx_src DIRECTORY "${rx_driver_package_dir}/r_s12ad_rx/src")
afr_glob_src(rs12adrx_target_src DIRECTORY "${rx_driver_package_dir}/r_s12ad_rx/src/targets/rx65n")
afr_glob_src(rscirx_src DIRECTORY "${rx_driver_package_dir}/r_sci_rx/src")
afr_glob_src(rscirx_target_src DIRECTORY "${rx_driver_package_dir}/r_sci_rx/src/targets/rx65n")

# resetprg.c should be linked at the top of objects and libraries to get the best symbol deletion optimization result.
set(rbsp_link_first_src
    "${rx_driver_package_dir}/r_bsp/mcu/all/resetprg.c"
)

set(rx_driver_package_src
    ${rbsp_board_genericrx65n_src}
    ${rbsp_mcu_all_src}
    ${rbsp_mcu_rx65n_src}
    ${rbyteq_src}
    ${retherrx_src}
    ${retherrx_phy_src}
    ${retherrx_target_src}
    ${rflashrx_src}
    ${rflashrx_flashtype_src}
    ${rs12adrx_src}
    ${rs12adrx_target_src}
    ${rscirx_src}
    ${rscirx_target_src}
)

set(rx_driver_package_include
    "${rx_driver_package_dir}/r_bsp"
    "${rx_driver_package_dir}/r_bsp/board/generic_rx65n"
    "${rx_driver_package_dir}/r_ether_rx"
    "${rx_driver_package_dir}/r_flash_rx"
    "${rx_driver_package_dir}/r_flash_rx/src"
    "${rx_driver_package_dir}/r_flash_rx/src/flash_type_4"
    "${rx_driver_package_dir}/r_flash_rx/src/targets"
    "${rx_driver_package_dir}/r_byteq"
    "${rx_driver_package_dir}/r_byteq/src"
    "${rx_driver_package_dir}/r_sci_rx"
    "${rx_driver_package_dir}/r_sci_rx/src"
    "${rx_driver_package_dir}/r_s12ad_rx"
    "${rx_driver_package_dir}/r_s12ad_rx/src"
    "${rx_driver_package_dir}/r_s12ad_rx/src/targets/rx65n"
)

# It is not worse to use `RECURSE` for `smc_gen` folder because this folder contains source files
# which are necessary for RX65N's target and flash type.
afr_glob_src(smc_gen_src DIRECTORY "${rx65nrsk_aws_dir}/src/smc_gen" RECURSE)

set(smc_gen_include
    "${rx65nrsk_aws_dir}/src/smc_gen/r_config"
    "${rx65nrsk_aws_dir}/src/smc_gen/r_pincfg"
    "${rx65nrsk_aws_dir}/src/smc_gen/general"
)

afr_glob_src(board_code_src DIRECTORY "${rx65nrsk_aws_dir}/application_code/renesas_code")
afr_glob_src(config_files_src DIRECTORY "${rx65nrsk_aws_dir}/config_files")

# Do not add demos or tests if they're turned off.
if(AFR_ENABLE_DEMOS OR AFR_ENABLE_TESTS)
    add_executable(${exe_target}
        ${rbsp_link_first_src}
        ${renesas_afr_common_src}
        ${rx_driver_package_src}
        ${smc_gen_src}
        ${board_code_src}
        ${config_files_src}
        "${rx65nrsk_aws_dir}/application_code/main.c"
        "${rx65nrsk_aws_dir}/application_code/renesas_code/utility/r_simple_filesystem_on_dataflash.c"
    )
    target_include_directories(
        ${exe_target}
        PRIVATE 
            ${renesas_afr_common_include}
            ${rx_driver_package_include}
            ${smc_gen_include}
            "${rx65nrsk_aws_dir}/application_code/renesas_code/utility"
    )
    target_link_libraries(
        ${exe_target}
        PRIVATE
            AFR::freertos_plus_tcp
            AFR::utils
    )
endif()
