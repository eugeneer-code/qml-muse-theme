cmake_minimum_required(VERSION 3.7)

project(QmlMuse LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if(NOT DEFINED BUILD_MUSE_EXAMPLE)
    set(BUILD_MUSE_EXAMPLE ON)
endif()

add_subdirectory(source)
if(BUILD_MUSE_EXAMPLE)
    add_subdirectory(example)
endif()




