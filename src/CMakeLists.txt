cmake_minimum_required(VERSION 3.14.7)

include(../cmake/classes_to_sources.cmake)

classes_to_sources(sources
  object_a
  object_b)

add_library(${PROJECT_NAME} ${sources})

string(MAKE_C_IDENTIFIER "${PROJECT_NAME}" project_identifier)

target_include_directories(${PROJECT_NAME}
  PRIVATE "${PROJECT_SOURCE_DIR}/include/${project_identifier}"
  PUBLIC "${PROJECT_SOURCE_DIR}/include")
