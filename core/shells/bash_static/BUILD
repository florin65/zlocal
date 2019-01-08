bad_flags -malign-double -s

OPTS+=" --with-curses \
        --disable-profiling  \
        --enable-static-link \
        --disable-profiling \
        --without-bash-malloc \
        --without-installed-readline"

default_config &&
make version.h &&
make &&
prepare_install &&

cp -f bash /usr/bin/bash_static
