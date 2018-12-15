# libcom_err.a(error_message.o): relocation R_X86_64_32 against `.bss' can not be used when making a shared object; recompile with -fPIC
CFLAGS+=" -fPIC"

OPTS+=" --libdir=/usr/lib \
        --sbindir=/usr/bin"

OPTS+=" --build=$BUILD      \
       --with-root-prefix= \
        --enable-elf-shlibs \
        --disable-libuuid   \
        --disable-uuidd     \
        --disable-libblkid  \
        --disable-fsck"

default_build &&

make install-libs || exit 1
