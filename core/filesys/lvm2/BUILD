if ! [[ $(arch) == x86_64 ]]; then
  CFLAGS+=" -fPIE " &&
  LDFLAGS+=" -pie "
fi

OPTS+=" --with-udev_prefix=/usr"
if module_installed systemd; then
  OPTS+=" --with-systemdsystemunitdir=/usr/lib/systemd/system"
fi &&

OPTS+=" --sbindir=/usr/bin"

OPTS+=" --libdir=/usr/lib  \
        --enable-fsadm     \
        --enable-applib    \
        --enable-cmdlib    \
        --enable-pkgconfig \
        --enable-dmeventd  \
        --enable-udev_sync \
        --enable-udev_rules"

default_build &&

make install_system_dirs
