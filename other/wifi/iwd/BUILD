OPTS+=" --enable-wired \
        --localstatedir=/var"

if ! module_installed systemd; then
   OPTS+=" --disable-systemd-service"
fi &&

default_build
