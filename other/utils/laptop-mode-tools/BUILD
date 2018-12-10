PKGDIR=$SOURCE_DIRECTORY"/build"

mkdir -p $PKGDIR &&

make DESTDIR="$PKGDIR" \
     PREFIX=/usr \
     LIB_D=/usr/lib \
     MAN_D=/usr/share/man \
     INIT_D=false \
     install &&

# use /usr/bin instead of /usr/sbin
mv $PKGDIR/usr/sbin/ $PKGDIR/usr/bin/ &&
find "$PKGDIR" -type f -exec sed -i 's|sbin/laptop_mode|bin/laptop_mode|g' '{}' ';'

prepare_install &&

cp -fR $PKGDIR/usr/* /usr/ &&
cp -fR $PKGDIR/etc/* /etc/ &&

if in_depends PyQt5 $MODULE; then
  install -Dm755 gui/LMT.py /usr/bin/lmt-gui &&
  # fix path of gui on config script
  sedit 's|/usr/share/laptop-mode-tools/lmt\.py$|/usr/bin/lmt-gui|' /usr/bin/lmt-config-gui
fi
