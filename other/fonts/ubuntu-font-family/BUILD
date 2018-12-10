prepare_install &&

if [ -d old.libraries ]; then
  rmdir -fr old.libraries
fi &&

mkdir -p /usr/share/fonts/TTF &&
install -m644 *.ttf  /usr/share/fonts/TTF &&
install -m644 Ubuntu-{L,R,B,C}*.ttf  /usr/share/fonts/TTF &&
install -m644 UbuntuMono-*.ttf  /usr/share/fonts/TTF
