mkdir -p build &&
 
OPTS+=" --prefix /usr \
        -Denable-rpm=false \
        -Denable-alpm=false \
        -Denable-stemmer=false"

meson build $OPTS &&

ninja -C build &&

prepare_install &&

ninja -C build install
