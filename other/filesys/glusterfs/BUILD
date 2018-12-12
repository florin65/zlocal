OPTS+=" --sbindir=/usr/bin" &&

OPTS+=" --disable-static --with-mountutildir=/usr/bin" &&

if module_installed systemd; then
  OPTS+=" --with-systemddir=/usr/lib/systemd/system"
fi &&

default_build
