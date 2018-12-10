OPTS+=" --sbindir=/usr/bin" &&

add_priv_user nsd:nsd -d /var/empty &&

OPTS+=" --datarootdir=/usr/share \
        --with-pidfile=/run/nsd/nsd.pid \
        --enable-pie \
        --enable-ratelimit \
        --enable-relro-now" &&

default_build
