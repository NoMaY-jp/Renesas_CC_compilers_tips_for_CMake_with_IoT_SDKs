# Toolchain file is processed multiple times, however, it cannot access CMake cache on some runs.
# We store the search path in an environment variable so that we can always access it.
if(NOT "${AFR_TOOLCHAIN_PATH}" STREQUAL "")
    set(ENV{AFR_TOOLCHAIN_PATH} "${AFR_TOOLCHAIN_PATH}")
endif()

# Find the compiler executable and store its path in a cache entry ${compiler_path}.
# If not found, issue a fatal message and stop processing. AFR_TOOLCHAIN_PATH can be provided from
# commandline as additional search path.
function(afr_find_compiler compiler_path compiler_exe)
    # Search user provided path first.
    find_program(
        ${compiler_path} ${compiler_exe}
        PATHS $ENV{AFR_TOOLCHAIN_PATH} PATH_SUFFIXES bin
        NO_DEFAULT_PATH
    )
    # If not then search system paths.
    if("${${compiler_path}}" STREQUAL "${compiler_path}-NOTFOUND")
        find_program(${compiler_path} ${compiler_exe})
    endif()
    if("${${compiler_path}}" STREQUAL "${compiler_path}-NOTFOUND")
        set(AFR_TOOLCHAIN_PATH "" CACHE PATH "Path to search for compiler.")
        message(FATAL_ERROR "Compiler not found, you can specify search path with\
            \"AFR_TOOLCHAIN_PATH\".")
    endif()
endfunction()

# External toolchain file is processed multiple times, however, it cannot access CMake cache on some runs.
# We store the search path in an environment variable so that we can always access it.
if(NOT "${AFR_EXTERNAL_TOOLCHAIN_PATH}" STREQUAL "")
    set(ENV{AFR_EXTERNAL_TOOLCHAIN_PATH} "${AFR_EXTERNAL_TOOLCHAIN_PATH}")
endif()

# Find the external toolchain executable and store its path in a cache entry ${external_toolchain_path}.
# If not found, issue a fatal message and stop processing. AFR_EXTERNAL_TOOLCHAIN_PATH can be provided from
# commandline as additional search path.
function(afr_find_external_toolchain external_toolchain_path external_toolchain_exe)
    # Search user provided path first.
    find_program(
        ${external_toolchain_path} ${external_toolchain_exe}
        PATHS $ENV{AFR_EXTERNAL_TOOLCHAIN_PATH} PATH_SUFFIXES bin
        NO_DEFAULT_PATH
    )
    # If not then search system paths.
    if("${${external_toolchain_path}}" STREQUAL "${external_toolchain_path}-NOTFOUND")
        find_program(${external_toolchain_path} ${external_toolchain_exe})
    endif()
    if("${${external_toolchain_path}}" STREQUAL "${external_toolchain_path}-NOTFOUND")
        set(AFR_EXTERNAL_TOOLCHAIN_PATH "" CACHE PATH "Path to search for external toolchain.")
        message(FATAL_ERROR "external toolchain not found, you can specify search path with\
            \"AFR_EXTERNAL_TOOLCHAIN_PATH\".")
    endif()
endfunction()
