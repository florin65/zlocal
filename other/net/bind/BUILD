add_priv_user bind:bind

OPTS+=" --disable-static"

# json-c breaks the compile
OPTS+=" --without-libjson"

OPTS+=" --sbindir=/usr/bin"

default_build &&

if module_installed systemd; then
  mkdir -p /run/named &&
  chown bind:bind /run/named
fi  &&

install -d -m770 -o 0 -g bind /var/named &&
install    -m640 -o 0 -g bind root.hint /var/named/ &&
install    -m640 -o 0 -g bind $SCRIPT_DIRECTORY/localhost.zone /var/named/ &&
install    -m640 -o 0 -g bind $SCRIPT_DIRECTORY/localhost.ip6.zone /var/named/ &&
install    -m640 -o 0 -g bind $SCRIPT_DIRECTORY/127.0.0.zone /var/named/ &&
install    -m640 -o 0 -g bind $SCRIPT_DIRECTORY/empty.zone /var/named/ &&

install -D -m644 $SCRIPT_DIRECTORY/sysusers.d/bind.conf /usr/lib/sysusers.d/bind.conf
