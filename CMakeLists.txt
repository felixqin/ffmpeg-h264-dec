
cmake_minimum_required(VERSION 3.0)

project(h264dec)

add_compile_options(-O2 -w -std=c99 -Wno-implicit-function-declaration)

include_directories(
        ffmpeg-src
)

file(GLOB_RECURSE SRCS ffmpeg-src/*.c)
file(GLOB TEMPLATES ffmpeg-src/libavcodec/*_template.c)
list(REMOVE_ITEM SRCS ${TEMPLATES})
message(${TEMPLATES})
message(${SRCS})

add_executable(h264dec
        decoder.c
        ${SRCS}
        )

target_link_libraries(h264dec m)
