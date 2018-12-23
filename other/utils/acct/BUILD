OPTS+=" --enable-linux-multiformat"

OPTS+=" --sbindir=/usr/bin"

default_build &&

install -dm700 /var/log/account &&
install -Dm644 "${MODULE}" "/etc/logrotate.d/${MODULE}" &&
install -Dm755 "${MODULE}on-create" "/usr/lib/${MODULE}/${MODULE}on-create" &&
if module_instaled systemd; then
   install -Dm644 "${MODULE}.service"  "/usr/lib/systemd/system/${MODULE}.service"
fi
