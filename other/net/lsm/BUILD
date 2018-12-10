OPTS+=" -s -j" &&

make $OPTS &&

prepare_install &&

install -Dpm0644 'lsm.conf' -t /etc/lsm &&
install -Dpm0755 'lsm' -t /usr/bin &&
install -Dpm0644 'README' 'lsm.conf.sample' 'default_script.sample' 'rsyslog-lsm.conf.sample' -t /usr/share/lsm &&
install -Dpm0755 'default_script' 'shorewall_script' -t /usr/share/lsm &&
install -d /var/lib/lsm
