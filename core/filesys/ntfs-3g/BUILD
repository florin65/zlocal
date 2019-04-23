OPTS+=" --enable-extras \
        --enable-ntfsprogs \
        --disable-ldconfig \
        --disable-static \
        --sbindir=/usr/bin \
        --exec_prefix=/usr"

default_config &&

sedit "s: /sbin: /usr/bin:g" Makefile &&

default_make
