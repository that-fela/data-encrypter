cmake_minimum_required(VERSION 3.0.0)
project(data-encrypter VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(data-encrypter src/data-encrypter.cpp lib/AES.h lib/AES.cpp src/FileHandling.cpp src/FileHandling.hpp lib/SHA512.h lib/SHA512.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
