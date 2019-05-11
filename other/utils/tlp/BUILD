export TLP_SBIN='/usr/bin'
export TLP_ULIB='/usr/lib/udev'
export TLP_ELOD='/usr/libexec/elogind/system-sleep'
export TLP_NO_INIT='1'
export TLP_NO_PMUTILS='1'

if module_installed systemd; then
   export TLP_SYSD='/usr/lib/systemd/system'
   export TLP_WITH_SYSTEMD='1'
else
   export TLP_WITH_SYSTEMD='0'
fi &&

prepare_install &&

make install-tlp install-man &&

if in_depends $MODULE NetworkManager; then
   make install-rdw
fi
