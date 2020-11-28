make PREFIX=/usr \
     X11INC=/usr/include/X11 \
     X11LIB=/usr/lib/X11 \
     FREETYPEINC=/usr/include/freetype2 &&

strip dwm &&

prepare_install &&

make PREFIX=/usr install &&

install -m644 -D README "/usr/share/doc/$MODULE/README"

mkdir -p /usr/share/xsessions
install -m644 -D "${SCRIPT_DIRECTORY}/dwm.desktop" /usr/share/xsessions/
