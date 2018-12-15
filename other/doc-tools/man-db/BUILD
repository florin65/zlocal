OPTS+=" --sbindir=/usr/bin \
        --sysconfdir=/etc \
        --with-db=gdbm \
        --disable-setuid \
        --enable-mandirs=GNU \
        --with-sections='1 n l 8 3 0 2 5 4 9 6 7'"

default_build &&

# part of groff pkg
rm -f /usr/bin/zsoelim

# script to convert manpages
install -D -m755 $SCRIPT_DIRECTORY/convert-mans /usr/bin/convert-mans

# install man-db update timer
install -D -m644 $SCRIPT_DIRECTORY/man-db.timer   /usr/lib/systemd/system/man-db.timer &&
install -D -m644 $SCRIPT_DIRECTORY/man-db.service /usr/lib/systemd/system/man-db.service &&
install -d -m755 /usr/lib/systemd/system/multi-user.target.wants &&
ln -s ../man-db.timer /usr/lib/systemd/system/multi-user.target.wants/man-db.timer
