#---Automatically Generated from template 'CMakeList.txt' wrote by @aliben---
#
# @Copyright (C) 2021 All rights reserved.
# @filename: evolution_cmake
# @author: aliben.develop@gmail.com
# @create_date: 2021-08-12 21:02:27
# @last_modified_date: 2021-11-06 22:18:09
# @description: TODO
#---****************************************************************---

if(BUILD_TESTS)
  enable_testing()
  file(GLOB_RECURSE EXAMPLES *.cc)
  foreach(EXAMPLE ${EXAMPLES})
    get_filename_component(MY_TARGET "${EXAMPLE}" NAME_WE)
    list(APPEND TEST_TARGETS ${MY_TARGET})
    add_executable(${MY_TARGET} ${EXAMPLE})
    #add_dependencies(${MY_TARGET} ${PROJECT_NAME})
    target_include_directories(${MY_TARGET}
        PRIVATE
          ${PROJECT_SOURCE_DIR}/include
          ${PROJECT_BINARY_DIR}/include
          ${CMAKE_INSTALL_PREFIX}/include
      )
    target_link_libraries(${MY_TARGET}
      PRIVATE
        evolution_cmake
        ${THIRD_PARTY_LIBS}
        ${TEST_LIBS}
      )

  endforeach()

  foreach(test_target IN LISTS TEST_TARGETS)
    add_test(
      NAME ${test_target}
      COMMAND $<TARGET_FILE:${test_target}>)
  endforeach()

  # if expecting some tests failed.
  # call set_tests_properties(example PROPERTIES WILL_FAIL true)

  # timeout for a test set to 10 seconds
  # set_test_properties(example PROPERTIES TIMEOUT 10)
endif()
