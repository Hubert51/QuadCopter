#  minimum required cmake version: 3.1.0
cmake_minimum_required(VERSION 3.1.0)

project(RealsenseExamplesRuijie)

# Save the command line compile commands in the build output
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if(COMPILER_SUPPORTS_CXX11)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
elseif(COMPILER_SUPPORTS_CXX0X)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
endif()




if(BUILD_GRAPHICAL_EXAMPLES)
    add_executable(optical_flow optical_flow.cpp ../example.hpp)
    find_package(OpenCV)
    include_directories( ${OpenCV_INCLUDE_DIRS} )
    target_link_libraries(optical_flow ${DEPENDENCIES})
    include_directories(optical_flow ../)
    set_target_properties (optical_flow PROPERTIES
            FOLDER "Examples"
            )

    install(
            TARGETS

            optical_flow

            RUNTIME DESTINATION
            ${CMAKE_INSTALL_PREFIX}/bin
    )
endif()
target_link_libraries( optical_flow ${OpenCV_LIBS} )



