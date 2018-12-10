prepare_install &&

./INSTALL &&

install -D -m644 service/$MODULE.service /usr/lib/systemd/system/${pkgname}.service &&

 # uninstall script is not needed since we're using a package manager :)
rm -rf /usr/share/${pkgname}/UNINSTALL
