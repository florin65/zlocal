local prefix=/usr sysconfdir=/etc

OPTS+=" --prefix=${prefix} \
        --libdir=${prefix}/lib \
        --bashcompletiondir=$(pkg-config --variable=completionsdir bash-completion)"

if module_installed systemd; then    
   OPTS+=" --systemdsystemunitdir=${prefix}/lib/systemd/system"
fi

default_build &&

# Removing modules we don't support
rm -rf /usr/lib/dracut/modules.d/{01fips,02fips-aesni,80cms,95dasd,95dasd_mod,95fcoe,95zfcp,95znet} &&

# Remove the systemd related ones too
if ! module_installed systemd; then
   rm -rf /usr/lib/dracut/modules.d/{00systemd,01systemd-init,02systemd-networkd,98dracut-systemd}
fi

# We always install this file (which means overwriting)
install -m 0644 -g root -o root $SCRIPT_DIRECTORY/files/* /etc/dracut.conf.d/ &&

# Install the dracut module to handle lunar cd
cp -R $SCRIPT_DIRECTORY/dracut.d/90lunar-live /usr/lib/dracut/modules.d/ &&

gather_docs HACKING TODO AUTHORS
