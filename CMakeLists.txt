cmake_minimum_required(VERSION 3.0)

project(ffmpeg-dec)


set(TOPDIR ${CMAKE_CURRENT_SOURCE_DIR})

if(WIN32)
    set(PLATFORM_DIR ${TOPDIR}/platform/mingw32)
else()
    set(PLATFORM_DIR ${TOPDIR}/platform/linux)
endif()


add_compile_options(-O2 -w -std=c99 -Wno-implicit-function-declaration)


add_subdirectory(ffmpeg-src)

include_directories(
        ${PLATFORM_DIR}
        ffmpeg-src
)

add_executable(h264dec
        main.c
        decoder.c
        )

target_link_libraries(h264dec ffmpeg_dec m)
