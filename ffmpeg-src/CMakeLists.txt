
include_directories(
        ./
        ${PLATFORM_DIR}
)

file(GLOB_RECURSE SRCS *.c)
file(GLOB TEMPLATES libavcodec/*_template.c)
list(REMOVE_ITEM SRCS ${TEMPLATES})

add_library(ffmpeg_dec SHARED
        ${SRCS}
        )
