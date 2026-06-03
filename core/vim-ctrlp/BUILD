INST_PATH=/usr/share/vim/vimfiles

prepare_install &&

echo 'Installing autoload...'
install -d $INST_PATH/autoload &&
cp -R autoload/* $INST_PATH/autoload &&

echo 'Installing documentation...'
install -d $INST_PATH/doc &&
cp -R doc/*.txt $INST_PATH/doc &&
install -Dm 644 readme.md /usr/share/doc/$MODULE/readme.md

echo 'Installing the plugin'
install -dm 755 $INST_PATH/plugin
install -Dm 644 plugin/*.vim $INST_PATH/plugin/

