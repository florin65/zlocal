OPTS+=" --with-features=huge \
        --enable-cscope \
        --enable-multibyte \
        --enable-fail-if-missing"

if ! (( in_depends $MODULE gtk+-3 ) || ( in_depends $MODULE gtk+-2 )); then
  OPTS+=" --disable-gui"
  sedit "/gvim.desktop/d" src/Makefile
fi

cd src &&
default_config &&
make -j1 VIMRCLOC=/etc &&
prepare_install &&

rm -f /usr/bin/vim /usr/bin/vi &&
( find /usr/share/vim -type d -exec rmdir {} \; &> /dev/null || true) &&

make install
