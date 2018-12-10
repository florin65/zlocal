prepare_install &&

mkdir -p /usr/share/fonts/{TTF,OTF} &&
install -D -m644 unhinted/*.ttf /usr/share/fonts/TTF &&
install -D -m644 hinted/*.ttf /usr/share/fonts/OTF &&

mkdir -p /etc/fonts/conf.avail
install -m644 $SCRIPT_DIRECTORY/files/*.conf /etc/fonts/conf.avail/
