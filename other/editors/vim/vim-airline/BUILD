INST_PATH=/usr/share/vim/vimfiles

prepare_install &&

install -Dm644 doc/airline.txt $INST_PATH/doc/airline.txt &&
install -Dm644 plugin/airline.vim $INST_PATH/plugin/airline.vim &&

install -d $INST_PATH/autoload &&
cp -R autoload/* $INST_PATH/autoload &&

install -d $INST_PATH/t &&
cp -R t/* $INST_PATH/t
