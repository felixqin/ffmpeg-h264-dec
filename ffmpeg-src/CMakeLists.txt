
add_definitions(-DHAVE_AV_CONFIG_H)
add_compile_options(-std=c99 -fomit-frame-pointer  -g -Wdeclaration-after-statement
        -Wall -Wdisabled-optimization -Wpointer-arith -Wredundant-decls -Wwrite-strings
        -Wtype-limits -Wundef -Wmissing-prototypes -Wno-pointer-to-int-cast
        -Wstrict-prototypes -Wempty-body -Wno-parentheses -Wno-switch -Wno-format-zero-length
        -Wno-pointer-sign -O3 -fno-math-errno -fno-signed-zeros -fno-tree-vectorize
        -Werror=format-security -Werror=implicit-function-declaration -Werror=missing-prototypes
        -Werror=return-type -Werror=vla -Wformat
        )

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
