cd src &&

export CFLAGS+=" -fPIC -fno-strict-aliasing -fstack-protector-all" &&
export CPPFLAGS+=" -I/usr/include/et" &&

OPTS+=" --enable-shared  \
        --with-system-et \
        --with-system-ss \
        --disable-rpath  \
        --infodir=/usr/share \
        --enable-dns-for-realm \
        --without-system-verto" &&

OPTS+=" --sbindir=/usr/bin" &&

default_build &&

[ -f /etc/krb5.conf ] || cp config-files/krb5.conf /etc
