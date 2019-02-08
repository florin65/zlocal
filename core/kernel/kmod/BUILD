OPTS+=" --exec-prefix=/usr \
        --sbindir=/usr/bin \
        --with-zlib \
          --with-openssl"

default_build &&

install -dm755 /{etc,usr/lib}/{depmod,modprobe}.d &&

# add symlinks to kmod
ln -sf /usr/bin/kmod /usr/bin/lsmod &&
for tool in {ins,rm,dep}mod mod{info,probe}; do
  ln -sf /usr/bin/kmod /usr/bin/$tool
done

# install depmod.d file for search/ dir
install -Dm645 $SCRIPT_DIRECTORY/depmod-search.conf /usr/lib/depmod.d/search.conf
