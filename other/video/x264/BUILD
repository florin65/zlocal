OPTS+=" --prefix=/usr \ 
        --enable-shared \
        --enable-strip  \
        --enable-pic"

if [[ "$TEN_BITS" == "y" ]]; then
  OPTS+=" --bit-depth=10"
fi

VERSION=$(grep '#define X264_BUILD' x264.h | cut -d' ' -f3) &&

./configure $OPTS &&

default_make
