NOCONFIGURE=1 ./autogen.sh &&

if module_installed qt4; then
  export MOC_QT4=/usr/lib/qt4/bin/moc
  . /etc/profile.d/qt4.rc
fi &&

add_priv_user avahi:avahi -d /dev/null -s /bin/false &&
add_priv_user avahi-autoipd:avahi-autoipd -d /dev/null -s /bin/false &&

# Add this missing group. It is used in /etc/dbus-1/system.d/avahi-dbus.conf
add_priv_group netdev &&

OPTS+=" --enable-compat-howl \
        --enable-compat-libdns_sd \
        --disable-stack-protector \
        --disable-monodoc \
        --disable-static \
        --disable-mono \
        --disable-qt3 \
        --with-distro=none \
        --with-autoipd-user=avahi-autopid \
        --with-autoipd-group=avahi-autopid"

OPTS+=" --sbindir=/usr/bin"

default_build &&

if ! ( module_installed xmltoman ); then
  rm -f /usr/share/man/man1/avahi*
  rm -f /usr/share/man/man1/bvnc.1
fi
