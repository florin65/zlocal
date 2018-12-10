# save tables
if module_installed iptables; then
  iptables-save -c > /etc/config.d/iptables.sav
fi &&

OPTS+=" --sbindir=/usr/bin"

OPTS+=" --enable-shared \
	--enable-libipq \
        --enable-bpf-compiler \
        --disable-static \
	--with-xtlibdir=/usr/lib/iptables"

# headers aren't installed by default
OPTS+=" --enable-devel"

default_build &&

# revive tables
if [ -f /etc/config.d/iptables.sav ]; then
  cat /etc/config.d/iptables.sav | iptables-restore -c &&
  rm /etc/config.d/iptables.sav
fi &&

# add empty iptables file for flushing
if [ ! -f /etc/config.d/iptables-empty ]; then
   [ ! -d /etc/config.d ] && mkdir -p /etc/config.d
  cp $SCRIPT_DIRECTORY/files/iptables-empty /etc/config.d/iptables-empty
fi &&

# little wrapper for systemd's usage
# todo: should be detected by our package-management (installwatch?)
#       i guess nobody uses lunar without installed iptables.
if module_installed systemd; then
  cp -Dm755 $SCRIPT_DIRECTORY/files/iptables-flush /usr/lib/systemd/scripts/ &&
  cp $SCRIPT_DIRECTORY/files/iptsave /usr/bin/iptsave &&
  chmod a+x /usr/bin/iptsave
fi &&

mkdir -p /etc/iptables &&
install -Dm644 $SCRIPT_DIRECTORY/rules/empty.rules /etc/iptables/ &&
install -Dm644 $SCRIPT_DIRECTORY/rules/simple_firewall.rules /etc/iptables/ &&

install -d /var/lib/{iptables,ip6tables} &&
install -m644 $SCRIPT_DIRECTORY/rules/empty-{filter,mangle,nat,raw,security}.rules /var/lib/iptables/ &&
install -m644 $SCRIPT_DIRECTORY/rules/empty-{filter,mangle,nat,raw,security}.rules /var/lib/ip6tables/
