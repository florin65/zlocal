if kernel_option_present CONFIG_INOTIFY_USER; then
  OPTS+=" --enable-inotify"
else
  OPTS+=" --disable-inotify"
fi

OPTS+=" runstatedir=/run        \
        --localstatedir=/var    \
        --disable-static        \
        --disable-tests         \
        --disable-asserts       \
        --disable-libaudit      \
        --disable-verbose-mode  \
        --disable-ducktype-docs \
        --enable-user-session   \
        --with-dbus-user=dbus   \
        --with-session-socket-dir=/tmp \
        --with-console-auth-dir=/run/console/ \
        --with-system-socket=/run/dbus/system_bus_socket"

#        --with-system-pid-file=/run/dbus.pid \

if module_installed systemd; then
  OPTS+=" --enable-systemd \
          --enable-user-session \
          --with-systemdsystemunitdir=/usr/lib/systemd/system"
else
  OPTS+=" --disable-systemd \
          --disable-user-session \
          --without-systemdsystemunitdir"
fi

default_build &&

# The following used to be in POST_INSTALL but the service wasn't starting
# on FIRST install due to the lack of existing /var/lib/dbus
add_priv_user dbus:dbus -d /dev/null -s /bin/false &&
mkdir -p /run/dbus &&
chown -R dbus:dbus /run/dbus &&

# remove the /etc/dbus-1 directory
rm -fr /etc/dbus-1 &&

mkdir -p /etc/X11/xinit/xinitrc.d/ &&
install -m756 $SCRIPT_DIRECTORY/30-dbus.sh /etc/X11/xinit/xinitrc.d/
