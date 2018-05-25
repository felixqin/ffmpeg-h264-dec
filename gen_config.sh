THISDIR=`dirname $0`

FFDIR=ffmpeg-2f76157



cd ${THISDIR}/../${FFDIR}

./configure \
    --disable-asm \
    --disable-pthreads \
    --disable-doc \
    --disable-encoders \
    --disable-muxers \
    --disable-decoders \
    --enable-decoder=h264 \
    --enable-decoder=hevc \
    --enable-decoder=mjpeg \
    --disable-parsers \
    --disable-demuxers \
    --disable-filters \
    --disable-programs \
    --enable-ffmpeg \


cd -


cp ${THISDIR}/../${FFDIR}/config.h ./


