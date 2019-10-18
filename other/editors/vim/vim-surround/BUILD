prepare_install &&

INSTPTH=/usr/share/vim/vimfiles

mkdri -p $INSTPTH/{plugin,doc} &&
install -Dm644 doc/* $INSTPTH/doc/ &&
install -Dm644 plugin/* $INSTPTH/plugin/ &&
install -Dm 644 README.markdown -t /usr/share/doc/$MODULE

