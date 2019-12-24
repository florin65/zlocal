prepare_install &&

INSTPTH=/usr/share/vim/vimfiles

install -d $INSTPTH/{plugin,doc} &&
install -Dm644 doc/* $INSTPTH/doc/ &&
install -Dm644 plugin/* $INSTPTH/plugin/ &&
install -Dm 644 README.md -t /usr/share/doc/$MODULE/ &&

# install example file
install -D -m 0644 vim-tmux-navigator.tmux /usr/share/doc/${MODULE}
