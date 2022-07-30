cmake_minimum_required(VERSION 3.14.7)

include(FetchContent)

FetchContent_Declare(googletest
  URL "https://github.com/google/googletest/archive/refs/tags/release-1.12.1.zip"
  URL_HASH "SHA256=24564e3b712d3eb30ac9a85d92f7d720f60cc0173730ac166f27dda7fed76cb2")

FetchContent_MakeAvailable(googletest)

string(MAKE_C_IDENTIFIER "${PROJECT_NAME}" project_identifier)

add_executable(${project_identifier}_tests
  test_object_a.cpp)

target_link_libraries(${project_identifier}_tests
  PRIVATE
    gtest
    gtest_main
    ${PROJECT_NAME})

add_test(NAME ${project_identifier}_gtest_tests COMMAND $<TARGET_FILE:${project_identifier}_tests>)

enable_testing()
