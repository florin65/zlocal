OPTS+=" --enable-optimize --prefix=/usr"

# Upstream forgot to bump the version number
setconf Makefile.in CFG_RELEASE_NUM="$VERSION"

./configure $OPTS &&

default_make &&

install -d /usr/share/bash-completion/completions &&
mv /usr/etc/bash_completion.d/cargo /usr/share/bash-completion/completions/cargo
