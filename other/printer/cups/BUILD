OPTS+=" --sbindir=/usr/bin"

OPTS+=" --enable-threads \
        --enable-raw-printing \
        --disable-static \
        --with-cups-group=lpi \
        --with-exe-file-perm=0755"

default_config &&

sedit "s:-Os -g::" Makedefs &&
sedit "s:-fstack-protector::" Makedefs &&

default_make &&

add_priv_user lp:lp -d /dev/null -s /bin/false &&

if [ -e /etc/init.d ]; then
   # kill some sysv stuff
   rm -f /etc/init.d/cups{,d}
fi &&

# a bit carefull to the content of these directories
if module_installed systemd; then
   # kill more sysv stuff
  rm -rf /etc/rc*.d &&
  rm -rf /etc/init.d
fi &&

# compress some driver files, adopted from Fedora
find /usr/share/cups/model -name "*.ppd" | xargs gzip -n9f &&

# remove client.conf man page
rm -f /usr/share/man/man5/client.conf.5 &&

# comment out all conversion rules which use any of the removed filters that are now part of cups-filters
perl -p -i -e 's:^(.*\s+bannertops\s*)$:#\1:' /usr/share/cups/mime/mime.convs &&

# comment out unnecessary PageLogFormat entry
sedit -e 's:PageLogFormat:#PageLogFormat:' /etc/cups/cupsd.conf* &&

# changed the location of the dbus-1 directory from /etc to /usr/share
if in_depends $MODULE dbus; then
  # fix dbus policy location - --with-dbusdir doens't work
  install -dm755 /usr/share/dbus-1/system.d &&
  mv /etc/dbus-1/system.d/cups.conf /usr/share/dbus-1/system.d/ &&
  rm -rf /etc/dbus-1
fi
