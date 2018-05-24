
cmake_minimum_required(VERSION 3.0)

project(h264dec)

add_compile_options(-O2 -w -std=c99 -Wno-implicit-function-declaration)


add_subdirectory(ffmpeg-src)

include_directories(
        ffmpeg-src
)

add_executable(h264dec
        main.c
        decoder.c
        )

target_link_libraries(h264dec ffmpeg_h264dec mingw32 m)
