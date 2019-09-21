add_priv_user sshd:sshd &&

OPTS+=" --sbindir=/usr/bin"

OPTS+=" --exec_prefix=/usr \
        --sysconfdir=/etc/ssh \
        --with-ssl-engine \
        --with-pid-dir=/run \
        --with-md5-passwords \
        --with-default-path=/usr/local/bin:/usr/bin"

default_build &&

# create /var/empty
mkdir -p /var/empty &&
chown root:sys /var/empty &&
chmod 755 /var/empty &&

# install ssh-copy-id script and man page
install -Dm755 {contrib,/usr/bin}/ssh-copy-id &&
install -Dm644 {contrib,/usr/share/man/man1}/ssh-copy-id.1
