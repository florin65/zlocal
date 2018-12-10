add_priv_user ntp:ntp &&

default_build &&

install -Dm0644 examples/chrony.conf.example3 /etc/chrony.conf &&
install -Dm0644 $SCRIPT_DIRECTORY/sysusers.d/chrony.conf /usr/lib/sysusers.d/chrony.conf &&
install -Dm0644 $SCRIPT_DIRECTORY/tmpfiles.d/chrony.conf /usr/lib/tmpfiles.d/chrony.conf &&

echo -e "\n# Enable kernel RTC sync\nrtcsync" >> /etc/chrony.conf

sedit '/^! rtconutc$/ s/^! //' /etc/chrony.conf &&

mkdir -p /usr/share/doc/chrony/examples &&
cp -fR examples/* /usr/share/doc/chrony/examples/ &&

chown ntp:ntp /var/lib/chrony
