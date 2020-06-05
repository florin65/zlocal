if kernel_option_present CONFIG_INOTIFY_USER; then
  OPTS+=" --enable-inotify"
else
  OPTS+=" --disable-inotify"
fi

OPTS+=" runstatedir=/run        \
        --localstatedir=/var    \
	--libexecdir=/usr/lib/dbus-1.0 \
        --disable-static        \
        --disable-debug         \
        --disable-tests         \
        --disable-selinux       \
        --disable-asserts       \
        --disable-libaudit      \
        --disable-apparmor      \
        --disable-containers    \
        --disable-verbose-mode  \
        --disable-ducktype-docs \
        --disable-installed-tests  \
        --enable-user-session      \
        --enable-ld-version-script \
        --without-test-user        \
        --without-dbus-test-dir    \
        --without-test-socket-dir  \
        --with-dbus-user=messagebus \
        --with-session-socket-dir=/tmp \
        --with-system-pid-file=/run/dbus.pid \
        --with-console-auth-dir=/run/console/ \
        --with-system-socket=/run/dbus/system_bus_socket"


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
add_priv_user messagebus:messagebus -d /dev/null -s /usr/bin/false &&
mkdir -p /run/dbus &&
chown -R messagebus:messagebus /run/dbus &&

# remove the /etc/dbus-1 directory
rm -fr /etc/dbus-1 &&

mkdir -p /etc/X11/xinit/xinitrc.d/ &&
install -m756 $SCRIPT_DIRECTORY/30-dbus.sh /etc/X11/xinit/xinitrc.d/
