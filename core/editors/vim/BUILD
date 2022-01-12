OPTS+=" --with-features=huge \
        --enable-cscope \
        --enable-fail-if-missing \
        --disable-smack \
        --disable-farsi \
        --disable-arabic \
        --disable-darwin \
        --disable-gtktest \
        --disable-selinux \
        --disable-netbeans \
        --disable-motif-check \
        --disable-athena-check"

# otherwise it defaults to auto/x+gtk
if ! in_depends $MODULE gtk+-3 && ! in_depends $MODULE gtk+-2; then
  OPTS+=" --disable-gui --disable-gnome-check --without-x"
fi

cd src &&

default_config &&
make VIRMLOC=/etc &&
prepare_install &&

rm -f /usr/bin/vim /usr/bin/vi &&
( find /usr/share/vim -type d -exec rmdir {} \; &> /dev/null || true) &&

make VIRMLOC=/etc install &&

# add a vi symlink if the file is missing
ln -sf /usr/bin/vim /usr/bin/vi &&

cp -f $SCRIPT_DIRECTORY/vimrc /usr/share/vim/vim${MAJOR//./}/sample.vimrc &&

#  install rc files
install -Dm 644 "${SCRIPT_DIRECTORY}"/lunar.vim /usr/share/vim/vimfiles/ &&
if [ -f /etc/vimrc ]; then
    install -Dm 644 "${SCRIPT_DIRECTORY}"/vimrc /etc/
fi
