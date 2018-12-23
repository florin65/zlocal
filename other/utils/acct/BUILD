OPTS+=" --enable-linux-multiformat"

OPTS+=" --sbindir=/usr/bin"

default_build &&

install -dm700 /var/log/account &&
#install -Dm644 "${MODULE}" "/etc/logrotate.d/${MODULE}" &&

mkdir -p /usr/lib/${MODULE} &&
install -Dm757 "${SCRIPT_DIRECTORY}/accton-create" "/usr/lib/${MODULE}/"

#if module_instaled systemd; then
#   install -Dm644 "${MODULE}.service" "/usr/lib/systemd/system/"
#fi
