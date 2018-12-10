unset CFLAGS
unset CXXFLAGS

sedit 's|/sbin|/bin|' src/MakeApp.mk &&
sedit 's|/local||'  Makefile &&

make prefix=/usr &&
make prefix=/usr libnethogs &&

prepare_install &&

make prefix=/usr install &&
make prefix=/usr install_lib &&
install -Dm755 src/libnethogs.h /usr/include/libnethogs.h &&
ln -sf /usr/lib/libnethogs.so.$VERSION /usr/lib/libnethogs.so
