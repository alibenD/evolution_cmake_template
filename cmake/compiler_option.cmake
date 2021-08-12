#---Automatically Generated from template 'option.cmake' wrote by @aliben---
#
# @Copyright (C) 2021 All rights reserved.
# @filename: compiler_option.cmake
# @author: aliben.develop@gmail.com
# @create_date: 2021-08-12 21:02:27
# @last_modified_date: NO_LAST_MODIFIED_DATE
# @description: TODO
#---****************************************************************---

# Compiler Option


  MESSAGE(STATUS "Setting up compiler flag")
  IF(ENABLE_ALL_WARNING)
    SET(CXX_FLAG_ALL_WARNING "-Wall")
  ENDIF()
  IF(ENABLE_WARNING_AS_ERROR)
    SET(CXX_FLAG_WARNING_AS_ERROR "-Werror")
  ENDIF()
  IF(BUILD_GTESTS)
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -ftest-coverage -fprofile-arcs")
  ENDIF()
  IF(ENABLE_WARNING_EXTRA)
    SET(CXX_FLAG_WARNING_EXTRA "-Wextra")
  ENDIF()
  IF(ENABLE_VERBOSE)
    SET(CMAKE_VERBOSE_MAKEFILE ON)
  ENDIF()


  IF(CMAKE_BUILD_TYPE STREQUAL "RELEASE")
  ELSEIF(CMAKE_BUILD_TYPE STREQUAL "DEBUG")
    SET(CMAKE_DEBUG_POSTFIX _debug)
  ENDIF()

# Set Compiler Flag
SET(CMAKE_CXX_STANDARD 17)

  # Cross-platform check
  #IF("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
  #  SET(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS} -O0 -g")
  #  SET(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS} -O3")
  #ELSEIF(CMAKE_HOST_APPLE)
  #  SET(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS} -O3")
  #  SET(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS} -O0 -g")
  #ELSEIF("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
  #  SET(CMAKE_CXX_FLAGS_RELEASE "-O3")
  #  SET(CMAKE_CXX_FLAGS_DEBUG "-O0 -g")
  #  SET(CMAKE_EXE_LINKER_FLAGS_COVERAGE "${CMAKE_EXE_LINKER_FLAGS_DEBUG}" --coverage)
  #  SET(CMAKE_SHARED_LINKER_FLAGS_COVERAGE "${CMAKE_SHARED_LINKER_FLAGS_DEBUG}" --coverage)
  #ELSEIF(CMAKE_CXX_COMPILER_ID MATCHES "^MSVC$")
  #  ADD_DEFINITION("-D _USE_MATH_DEFINES /bigobj /wd4305 /wd4244 /MP")
  #  ADD_DEFINITION("-D PROJECT_CORE_EXPORTS")
  #ENDIF()
