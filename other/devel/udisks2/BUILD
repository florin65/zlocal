OPTS+=" --disable-man \
        --disable-static \
        --enable-available-modules"

OPTS+=" --sbindir=/usr/bin"

if ! module_installed systemd; then
   OPTS+=" --with-systemdsystemunitdir=no"
fi

default_build
