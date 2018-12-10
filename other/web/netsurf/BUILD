OPTS+=" PREFIX=/usr TARGET=gtk" &&

prepare_install &&

make install $OPTS

mv "/usr/bin/$MODULE" "/usr/bin/$MODULE.elf" &&
install -Dm755 "$SCRIPT_DIRECTORY/$MODULE.sh"      "/usr/bin/$MODULE" &&
install -Dm644 "$SCRIPT_DIRECTORY/$MODULE.png"     "/usr/share/pixmaps/$MODULE.png" &&
install -Dm644 "$SCRIPT_DIRECTORY/$MODULE.desktop" "/usr/share/applications/$MODULE.desktop"
