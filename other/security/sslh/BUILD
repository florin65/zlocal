make USELIBCAP=1 &&

prepare_install &&

# install the config file
install -Dm 644 $SCRIPT_DIRECTORY/sslh.conf /etc/sslh.conf

# manually install to have both ssl-fork and ssl-select
install -Dm 755 sslh-fork /usr/bin/sslh-fork
install -Dm 755 sslh-select /usr/bin/sslh-select
ln -sf /usr/bin/sslh-fork /usr/bin/sslh

# install manpage
install -Dm 644 sslh.8.gz /usr/share/man/man8/sslh.8.gz

# install examples files
install -Dm 644 basic.cfg /usr/share/doc/$MODULE/basic.cfg
install -Dm 644 example.cfg /usr/share/doc/$pkgname/example.cfg

if module_installed systemd; then
  install -dm 755 /usr/lib/{systemd/system,sysusers.d}
  install -Dm 644 $SCRIPT_DIRECTORY/systemd.d/*.service /usr/lib/systemd/system/
fi

