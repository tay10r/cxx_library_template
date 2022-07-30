cmake_minimum_required(VERSION 3.14.7)

project(rul VERSION 0.1.0 DESCRIPTION "" LANGUAGES CXX HOMEPAGE_URL "")

add_subdirectory("src")
add_subdirectory("tests")

enable_testing()
