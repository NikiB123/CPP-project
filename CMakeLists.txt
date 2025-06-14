cmake_minimum_required(VERSION 3.28.3)
project(CPP-Project)

option(BUILD_TESTS " Turn on build for tests of CPPPtoject" OFF)

file(GLOB SRC_FILES
          "src/*.cpp"
)

set(INC_FILES_DIR
        include/
)

if(BUILD_TESTS)
	add_subdirectory(test)
endif()

include_directories(
        ${INC_FILES_DIR}
)

add_executable(CPP-Project
        ${SRC_FILES}
)

