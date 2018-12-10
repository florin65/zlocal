if [ -d old.libraries ]; then
  rmdir -fr old.libraries
fi &&

prepare_install &&

mkdir -p /usr/share/fonts/TTF &&
install -m644 *.ttf /usr/share/fonts/TTF &&

install -m644 $SCRIPT_DIRECTORY/conf/sans-mono-fontconfig.conf /etc/fonts/conf.avail/60-$MODULE-sans-mono-fontconfig.conf &&
install -m644 $SCRIPT_DIRECTORY/conf/sans-fontconfig.conf  /etc/fonts/conf.avail/65-$MODULE-sans-fontconfig.conf &&
install -m644 $SCRIPT_DIRECTORY/conf/serif-fontconfig.conf /etc/fonts/conf.avail/65-$MODULE-serif-fontconfig.conf &&
install -m644 $SCRIPT_DIRECTORY/conf/kufi-fontconfig.conf  /etc/fonts/conf.avail/65-$MODULE-kufi-fontconfig.conf
