#---Automatically Generated from template 'option.cmake' wrote by @aliben---
#
# @Copyright (C) 2021 All rights reserved.
# @filename: option.cmake
# @author: aliben.develop@gmail.com
# @create_date: 2021-08-12 21:02:27
# @last_modified_date: NO_LAST_MODIFIED_DATE
# @description: TODO
#---****************************************************************---

#project name

# Option
  option(ENABLE_ALL_WARNING ON)
  option(ENABLE_WARNING_AS_ERROR OFF)
  option(ENABLE_WARNING_EXTRA ON)
  option(ENABLE_VERBOSE ON)
  option(ENABLE_PROFILER OFF)

  option(BUILD_GTESTS "Build test example cases with google test" OFF)
  option(WITH_GLOG "Enable google log in this case" OFF)

  option(BUILD_SHARED_LIBS "Build shared libraries" ON)

# CMake Build System Default Setup
  set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Default Build Type" FORCE)
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS Release Debug RelWithDebInfo MinSizeRel)

#Macro

if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
  set(SYSTEM_NAME "IS_LINUX")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
  set(SYSTEM_NAME "IS_MACOS")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Windows")
  set(SYSTEM_NAME "IS_WINDOWS")
endif()

# PROCESSOR INSTRUCTION SET
# run "cmake --system-information information.txt"
foreach(key IN ITEMS
    NUMBER_OF_LOGICAL_CORES
    NUMBER_OF_PHYSICAL_CORES
    TOTAL_VIRTUAL_MEMORY
    AVAILABLE_VIRTUAL_MEMORY
    TOTAL_PHYSICAL_MEMORY
    AVAILABLE_PHYSICAL_MEMORY
    IS_64BIT
    HAS_FPU
    HAS_MMX
    HAS_MMX_PLUS
    HAS_SSE
    HAS_SSE2
    HAS_SSE_FP
    HAS_SSE_MMX
    HAS_AMD_3DNOW
    HAS_AMD_3DNOW_PLUS
    HAS_IA64
    OS_NAME
    OS_RELEASE
    OS_VERSION
    OS_PLATFORM
    )
  cmake_host_system_information(RESULT _${key} QUERY ${key})
endforeach()
configure_file(config.h.in include/config.h @ONLY)
