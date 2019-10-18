prepare_install &&

INSTPTH=/usr/share/nvim/runtime

mkdir -p $INSTPTH/{plugin,doc,autoload/syntastic/,syntax_checkers} &&
#find . -type d -exec chmod 755 '{}' \;
cp -dr plugin/* $INSTPTH/plugin/ &&
install -Dm0644 doc/syntastic.txt $INSTPTH/doc/ &&
cp autoload/syntastic/* $INSTPTH/autoload/syntastic/ &&
cp -dr syntax_checkers/* $INSTPTH/syntax_checkers/ &&

# remove rustc checker (fixes a bug)
rm -rf /usr/share/vim/vimfiles/syntax_checkers/rust/

