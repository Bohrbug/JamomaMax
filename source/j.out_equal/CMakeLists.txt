cmake_policy(SET CMP0037 OLD)
project(j.out_equal)

set(PROJECT_SRCS
	${CMAKE_CURRENT_SOURCE_DIR}/../j.out/j.out.cpp
)

set(PROJECT_SRCS ${PROJECT_SRCS} $<TARGET_OBJECTS:TTModularClassWrapperMax>)
add_definitions(-DAUDIO_GRAPH_EXTERNAL -DJ_OUT_MULTI)
include(${CMAKE_CURRENT_SOURCE_DIR}/../../Shared/CMake/MaxExternalCommon.cmake)
