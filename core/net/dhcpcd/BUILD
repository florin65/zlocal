add_priv_user dhcpcd:dhcpcd -s /usr/bin/false &&

OPTS+=" --rundir=/run \
        --privsepuser=dhcpcd \
        --dbdir=/var/lib/dhcpcd"

OPTS+=" --sbindir=/usr/bin"

default_build &&

# Set Options in /etc/dhcpcd.conf
# Disable ip4vll
echo noipv4ll >> /etc/dhcpcd.conf
