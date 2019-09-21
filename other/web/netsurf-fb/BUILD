OPTS+=" PREFIX=/usr TARGET=framebuffer"

prepare_install &&

make install $OPTS &&

mv "/usr/bin/netsurf" "/usr/bin/netsurf.elf" &&
install -m0644 docs/netsurf-fb.1 /usr/share/man/man1/ &&
install -Dm755 "$SCRIPT_DIRECTORY/netsurf.sh" "/usr/bin/netsurf"
