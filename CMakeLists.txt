cmake_minimum_required(VERSION 3.13)
project(yuri)

set(CMAKE_CXX_STANDARD 14)

add_executable(yuri main.cpp sciconst.h readin.cpp readin.h sdomain.cpp sdomain.h)