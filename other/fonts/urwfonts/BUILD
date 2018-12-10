URWD=/usr/share/fonts/urwfonts

if [ ! -d $URWD ]; then
  mkdir -p $URWD
fi &&

if [ -d old.libraries ]; then
  rmdir -fr old.libraries
fi &&

prepare_install &&

cp -f $SOURCE_DIRECTORY/* $URWD
