CXXFLAGS+=" -std=c++14"

OPTS+=" --sbindir=/usr/bin"

default_build &&

install -Dm644 $SCRIPT_DIRECTORY/thermald.conf /usr/lib/modules-load.d/ &&

# Remove Upstart related file
rm -f /etc/init/thermald.conf
