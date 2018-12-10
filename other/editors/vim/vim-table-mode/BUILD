prepare_install &&

INSTPTH=/usr/share/vim/vimfiles

install -d $INSTPTH/{plugin,doc,autoload/tablemode}
find . -type d -exec chmod 755 '{}' \;
cp -dr plugin/* $INSTPTH/plugin/
install -Dm0644 doc/table-mode.txt $INSTPTH/doc/table-mode.txt
cp -r autoload/tablemode/* $INSTPTH/autoload/tablemode/
cp autoload/tablemode.vim $INSTPTH/autoload/
