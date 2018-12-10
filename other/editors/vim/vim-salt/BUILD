prepare_install &&

INSTPTH=/usr/share/vim/vimfiles

echo 'Removing stray files...'
rm LICENSE README.rst &&
rm -r .git &&

echo 'Installing...'
install -dm 755 $INSTPTH &&
cp -fR * $INSTPTH/
