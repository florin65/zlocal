OPTS+=" PREFIX=/usr TARGET=framebuffer"  &&

prepare_install &&

make install $OPTS &&

mv "/usr/bin/netsurf" "/usr/bin/netsurf.elf" &&
install -Dm755 "$SCRIPT_DIRECTORY/netsurf.sh" "/usr/bin/netsurf"
