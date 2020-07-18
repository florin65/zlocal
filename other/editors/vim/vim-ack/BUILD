INST_PTH=/usr/share/vim/vinfiles

prepare_install &&

mkdir -p "$INST_PTH"/{autoload,doc,ftpplugin,plugin} &&

install -m 644 plugin/ack.vim "$INST_PTH"/plugin/ &&
install -Dm644 ftplugin/*.vim "$INST_PTH"/ftplugin/ &&
install -m 644 autoload/ack.vim "$INST_PTH"/autoload/ &&
install -m 644 doc/ack*.txt /usr/share/vim/vimfiles/doc/
