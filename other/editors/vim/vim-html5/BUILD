prepare_install &&

INSTPTH=/usr/share/vim/vimfiles

mkdir -p $INSTPTH &&
cp -r after autoload ftplugin indent syntax $INSTPTH &&
find $INSTPTH -type f -exec chmod 644 {} \;
