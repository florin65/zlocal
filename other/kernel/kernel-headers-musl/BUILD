_CARCH=$(arch) &&
[ $CARCH == "i686" ] && _CARCH=x86

make ARCH=${_CARCH} prefix=/usr/lib/musl &&

prepare_install &&

make ARCH=${_CARCH} prefix=/usr/lib/musl install
