OPTS+=" --exec-prefix=/usr" &&

OPTS+=" --sbindir=/usr/bin" &&

default_build &&

mkdir -p /etc/acpi/events /etc/acpi/actions &&

#  not everybody wants the default poweroff script ;)
if [ ! -e /etc/acpi/events/power ]; then
  install -D -m644 ${SCRIPT_DIRECTORY}/power /etc/acpi/events/power
fi &&

gather_docs samples/acpi_handler.sh samples/sample.conf &&

# default config
install -Dm644 $SCRIPT_DIRECTORY/anything   /etc/acpi/events/anything &&
install -Dm755 $SCRIPT_DIRECTORY/handler.sh /etc/acpi/handler.sh &&

# fix acpid rights
chmod 756 /usr/bin/acpid &&

if module_installed openrc; then
   rm -f /etc/init.d/acpid
fi
