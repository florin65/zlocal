CFLAGS+=" -fPIC"

mkdir -p build-binutils &&
cd build-binutils &&

# Enable 64bit bfd for x86
if [[ "$(arch)" == "i686" ]]; then
  OPTS+=" --enable-64-bit-bfd"
fi &&

../configure --prefix=/usr    \
             --disable-gdb    \
             --disable-werror \
             --enable-cet \
             --enable-gold \
             --enable-relro \
             --enable-plugins \
             --enable-threads \
             --enable-ld=default \
             --enable-install-libiberty \
             --with-pic \
             --with-system-zlib \
             $OPTS &&

#             --enable-shared  \

make configure-host &&
make tooldir=/usr &&
prepare_install &&
make tooldir=/usr install &&

# Remove unwanted files
rm /usr/share/man/man1/{dlltool,windres,windmc}*

# No shared linking to these files outside binutils
rm /usr/lib/lib{bfd,opcodes}.so &&
echo "INPUT ( /usr/lib/libbfd.a -liberty -lz -ldl )" > /usr/lib/libbfd.so &&
echo "INPUT ( /usr/lib/libopcodes.a -lbfd )" > /usr/lib/libopcodes.so
