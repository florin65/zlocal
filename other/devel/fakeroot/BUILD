./bootstrap &&

OPTS=" --libdir=/usr/lib/fakeroot \
       --disable-static \
       --with-ipc=sysv"

default_build &&

install -dm755 /etc/ld.so.conf.d/ &&
echo '/usr/lib/libfakeroot' > /etc/ld.so.conf.d/fakeroot.conf
