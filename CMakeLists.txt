#---Automatically Generated from template 'CMakeList.txt' wrote by @aliben---
#
# @Copyright (C) 2021 All rights reserved.
# @filename: evolution_cmake
# @author: aliben.develop@gmail.com
# @create_date: 2021-08-12 21:02:27
# @last_modified_date: 2021-11-07 19:19:28
# @description: TODO
#---****************************************************************---

# Cmake version required
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

#project name
project(evolution_cmake)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(GNUInstallDirs)
include(CMakePrintHelpers)
include(CMakeDependentOption)

include(colors)
include(option)
include(compiler_option)
include(other_options)
include(find_package)
include(system_detector)
define_colors()

build_warning("Project:  ${PROJECT_NAME}" )
build_warning("Build Type: ${CMAKE_BUILD_TYPE}")
build_warning("DEBUG POSTFIX: ${CMAKE_DEBUG_POSTFIX}")

build_info("Project:  ${PROJECT_NAME}")
build_info("Build Type: ${CMAKE_BUILD_TYPE}")
build_info("DEBUG POSTFIX: ${CMAKE_DEBUG_POSTFIX}")

# Set Subdir(src)
  add_subdirectory(src)
  add_subdirectory(examples)
  add_subdirectory(test)

# EXECUTABLE
  # Example: ADD_EXECUTABLE( EXEC_NAME SRC_FILE_NAME_LIST )

# TARGET LINK
  # Example: TARGET_LINK_LIBRARIES( EXEC_NAME LIBPATH ) ...LIB_PATH e.g. ${OPENCV_LIBS}
  cmake_print_variables(CMAKE_INSTALL_PREFIX)
  #set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR})
  #set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR})
  #set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BIN_DIR})

  set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
  set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_INSTALL_BIN_DIR})
