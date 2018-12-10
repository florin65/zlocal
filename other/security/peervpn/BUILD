unset LDFLAGS &&

make &&
prepare_install &&

install -Dm0600 peervpn.conf /etc/peervpn/peervpn.conf &&
install -Dm0775 peervpn /usr/bin/peervpn &&
install -Dm0644 $SCRIPT_DIRECTORY/systemd.d/peervpn@.service /usr/lib/systemd/system/peervpn@.service
