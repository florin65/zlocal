make &&
prepare_install &&
install -m755 -s rpmunpack /usr/bin/ &&

if ! module_installed rpm && ! module_installed rpm-old; then
  # rpm module provides /usr/bin/rpm2cpio
  install -m755 rpm2cpio /usr/bin/
fi
