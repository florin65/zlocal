OPTS+=" --with-features=huge \
        --enable-cscope \
        --enable-multibyte \
        --enable-fail-if-missing"

if ! (( in_depends $MODULE gtk+-3 ) || ( in_depends $MODULE gtk+-2 )); then
  OPTS+=" --disable-gui"
fi &&

cd src &&
default_config &&
make -j1 VIMRCLOC=/etc &&
prepare_install &&

rm -f /usr/bin/vim /usr/bin/vi &&
( find /usr/share/vim -type d -exec rmdir {} \; &> /dev/null || true) &&

make install &&

ln -sf /usr/bin/vim /usr/bin/vi &&
ln -sf /usr/bin/vim /usr/bin/view &&
cp -f $SCRIPT_DIRECTORY/vimrc /usr/share/vim/vim${MAJOR}/sample.vimrc
