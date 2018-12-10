cd src &&

export CFLAGS="${CFLAGS} -fPIC"
make &&

export CFLAGS="${CFLAGS} -shared -Wl,-soname,${MODULE}.so.0"
gcc ${LDFLAGS} ${CFLAGS} *.o -o ${MODULE}.so.0 &&

prepare_install &&

install -d "${MODULE}/usr/lib" &&
install libb64.so.0 "/usr/lib/" &&
ln -sf /usr/lib/libb64.so.0 "${MODULE}/usr/lib/libb64.so" &&

cp -r ../include "/usr/"
