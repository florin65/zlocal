OPTS+=" --prefix=/usr \
        --sbindir=/usr/bin \
        --with-drivedbdir \
        --with-libcap-ng=yes \
        --with-initscriptdir=/etc/init.d \
        --with-smartdscriptdir=/usr/share/smartmontools \
        --with-systemdsystemunitdir=/usr/lib/systemd/system \
        --with-smartdplugindir=/usr/share/smartmontools/smartd_warning.d"

default_build &&

if module_installed sysvinit; then
    rm -f /etc/init.d/smartd
    rm -f /etc/rc?.d/???smartd
fi
