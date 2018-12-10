prepare_install &&

# binary
install -Dm 755 $MODULE /usr/bin/$MODULE &&

# profile
install -Dm 644 default.prf /etc/$MODULE/default.prf &&

# plugins, include, db
install -d /usr/share/$MODULE
cp -a db include plugins /usr/share/$MODULE &&

# doc files
install -d /usr/share/doc/$MODULE
install -m 644 -t /usr/share/doc/$MODULE README INSTALL FAQ &&
install -Dm 644 $MODULE.8 /usr/share/man/man8/$MODULE.8 &&

# completion
install -Dm 644 extras/bash_completion.d/$MODULE /usr/share/bash-completion/completions/$MODULE

if module_installed systemd; then
  # systemd
  install -d /usr/lib/systemd/system/
  install -m 644 extras/systemd/{lynis.service,lynis.timer} /usr/lib/systemd/system/
fi
