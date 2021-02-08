CXXFLAGS+=" -std=c++14"

OPTS+=" --sbindir=/usr/bin 
        --with-dbus-sys-dir=/usr/share/dbus-1/system.d"

default_build &&

install -Dm644 $SCRIPT_DIRECTORY/thermald.conf /usr/lib/modules-load.d/ &&

# Remove Upstart related file
if ! module_installed sysvinit; then
   rm -f /etc/init/thermald.conf
fi
