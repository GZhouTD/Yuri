cmake_minimum_required(VERSION 3.13)
project(yuri)

set(CMAKE_CXX_STANDARD 14)

add_executable(yuri main.cpp Readin.cpp Readin.h Sdomain.cpp Sdomain.h scicont.h Writeout.cpp Writeout.h)
