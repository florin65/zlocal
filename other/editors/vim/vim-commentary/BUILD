prepare_install &&

INSTPTH=/usr/share/vim/vimfiles

mkdir -p $INSTPTH/{doc,plugin} &&
install -Dm 644 doc/* $INSTPTH/doc/ &&
install -Dm 644 plugin/* $INSTPTH/plugin/ &&
install -Dm 644 README.markdown -t /usr/share/doc/$MODULE/
