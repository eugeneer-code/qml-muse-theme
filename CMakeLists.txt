cmake_minimum_required(VERSION 3.7)

project(QmlMuse LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

option(BUILD_MUSE_EXAMPLE "Build muse theme demo" ON)
option(BUILD_MUSE_STATIC "Build Muse as static library" ON)

add_subdirectory(source)
if(BUILD_MUSE_EXAMPLE)
    add_subdirectory(example)
endif()

message("---------------------------------
Configure Muse theme build
---------------------------------
Product        = ${PROJECT_NAME}
Configuration  = ${CMAKE_BUILD_TYPE}
Static libs    = ${BUILD_MUSE_STATIC}
Version        = TODO!
Qt version     = ${Qt5Core_VERSION}
Build path     = ${CMAKE_BINARY_DIR}
Compiler       = ${CMAKE_CXX_COMPILER_ID}
Compiler path  = ${CMAKE_CXX_COMPILER}
Compiler flags = ${CMAKE_CXX_FLAGS}
Linker flags   = ${CMAKE_EXE_LINKER_FLAGS}
Install path   = ${INSTALLATION_DIR}
Build example  = ${BUILD_MUSE_EXAMPLE}
---------------------------------
")



