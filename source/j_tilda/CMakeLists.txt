cmake_minimum_required(VERSION 3.0)
cmake_policy(SET CMP0037 OLD)

project(j_tilda)

set(PROJECT_SRCS
  ${CMAKE_CURRENT_SOURCE_DIR}/j~.cpp
)

set(PROJECT_SRCS ${PROJECT_SRCS} $<TARGET_OBJECTS:TTClassWrapperMax>)
include(${CMAKE_CURRENT_SOURCE_DIR}/../../Shared/CMake/MaxExternalCommon.cmake)
set_target_properties(${PROJECT_NAME} PROPERTIES XCODE_ATTRIBUTE_PRODUCT_NAME "'j~'")
