cd `dirname $0`
THISDIR=`pwd`
FFDIR=${THISDIR}/../ffmpeg-4.0

cd ffmpeg-src
find -name *.h -o -name *.c | while read FILENAME; do
    if [ -f ${FILENAME} ]; then
        SRCFILE=${FFDIR}/${FILENAME}
        if [ -f ${SRCFILE} ]; then
            #echo ${SRCFILE}
            cp -v ${SRCFILE} ${FILENAME}
        else
            #echo "not exist: ${SRCFILE}"
            rm ${FILENAME}
        fi
    fi
done
cd -

