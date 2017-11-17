cmake_minimum_required(VERSION 3.8)
project(Generator)

SET(CMAKE_CXX_FLAGS "-I/usr/local/systemc-2.3.2/include -std=c++14")
SET(CMAKE_EXE_LINKER_FLAGS "-L/usr/local/systemc-2.3.2/lib-linux64 -lsystemc -lpthread -static")

set(SOURCE_FILES main.cpp gene.cpp gene.h sc_store.cpp sc_store.h analyseur.cpp analyseur.h)

add_executable(Generator ${SOURCE_FILES})