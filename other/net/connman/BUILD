OPTS=" --prefix=/usr \
       --sysconfdir=/etc \
       --localstatedir=/var \
       --bindir=/usr/bin  \
       --enable-pie       \
       --enable-tools     \
       --enable-client    \
       --enable-ethernet  \
       --enable-loopback  \
       --enable-threads   \
       --enable-nmcompat"

OPTS+=" --sbindir=/usr/bin"

if module_installed systemd; then
  OPTS+=" --with-systemdunitdir=/usr/lib/systemd/system"
fi &&

default_build
