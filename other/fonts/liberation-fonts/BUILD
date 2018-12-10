make &&

if [ -d old.libraries ]; then
  rmdir -fr old.libraries
fi &&

prepare_install &&

mkdir -p /usr/share/fonts/TTF &&
install -m644 $MODULE-ttf/* /usr/share/fonts/TTF
