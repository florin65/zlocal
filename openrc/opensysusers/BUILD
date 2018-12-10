prepare_install &&

# the base stuff
make PREFIX=/usr HAVEOPENRC=yes HAVESYSTEMD=no &&

# the common stuff
make PREFIX=/usr install-shared &&
install -Dm644 bin/opensysusers /usr/bin/sysusers &&
ln -sf /usr/bin/sysusers /usr/bin/systemd-sysusers &&

# the openrc related stuff
make PREFIX=/usr install-openrc &&
sed -e 's|#!/sbin/openrc-run|#!/usr/bin/openrc-run|g' \
    -i /etc/init.d/opensysusers
