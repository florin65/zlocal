prepare_install &&

INSTPTH=/usr/share/vim/vimfiles

mkdir -p -m 755 $INSTPTH/{"doc","plugin","autoload","t"}
install -m644 doc/lightline.txt $INSTPTH/doc/lightline.txt
install -m644 plugin/lightline.vim $INSTPTH/plugin/lightline.vim
cp -R autoload/* $INSTPTH/autoload
cp test/{,\.t}* $INSTPTH/t
