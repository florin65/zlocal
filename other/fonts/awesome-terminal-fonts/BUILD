if [ -d old.libraries ]; then
  rmdir -fr old.libraries
fi &&

prepare_install &&

mkdir -p /usr/share/fonts/TTF &&

install -p -m 0644 build/*.ttf /usr/share/fonts/TTF/ &&
install -p -m 0644 config/10-symbols.conf /etc/fonts/conf.avail/
