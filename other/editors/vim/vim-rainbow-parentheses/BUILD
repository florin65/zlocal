prepare_install &&

INSTPTH=/usr/share/vim/vimfiles

echo 'Installing documentation...'
install -Dm 644 readme.md "/usr/share/doc/vim-rainbow-parentheses/readme.md"

echo 'Installing appdirs...'
install -dm 755 $INSTPTH/{"autoload","plugin"}
for _appdir in autoload plugin; do
  cp -dp --no-preserve=ownership $_appdir/* $INSTPTH/$_appdir/
done
