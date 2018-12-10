meson --prefix /usr --sbindir bin . build &&

cd build
ninja &&
prepare_install &&
ninja install &&

if module_installed systemd; then
  rm -f /etc/init.d/fuse3
fi
