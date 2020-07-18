INST_PATH=/usr/share/vim/vimfiles

prepare_install &&

mkdir -p "$INST_PTH"/{autoload,doc,t} &&

install -m 644 doc/airline.txt $INST_PATH/doc/airline.txt &&
install -m 644 plugin/airline.vim $INST_PATH/plugin/airline.vim &&

cp -R autoload/* $INST_PATH/autoload &&
cp -R t/* $INST_PATH/t
