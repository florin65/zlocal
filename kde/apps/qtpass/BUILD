source /etc/profile.d/qt5.rc &&

qmake-qt5 &&
make &&
prepare_install &&

install -D -m0755 main/qtpass /usr/bin/ &&
install -D -m0644 artwork/icon.png /usr/share/pixmaps/$MODULE.png &&
install -D -m0644 ${MODULE}.desktop /usr/share/applications/ &&
install -D -m0644 ${MODULE}.1 /usr/share/man/man1/
