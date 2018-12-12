prepare_install &&

# installwatch is broken: it makes us account for the link TARGET and not just the link, so, for now:
devoke_installwatch &&

mkdir -p /usr/bin &&
ln -sf /usr/lib/systemd/systemd /usr/bin/init &&
ln -sf /usr/bin/systemctl /usr/bin/halt &&
ln -sf /usr/bin/systemctl /usr/bin/poweroff &&
ln -sf /usr/bin/systemctl /usr/bin/reboot &&
ln -sf /usr/bin/systemctl /usr/bin/runlevel &&
ln -sf /usr/bin/systemctl /usr/bin/shutdown &&
ln -sf /usr/bin/systemctl /usr/bin/telinit &&
ln -sf /usr/bin/pgrep     /usr/bin/pidof
