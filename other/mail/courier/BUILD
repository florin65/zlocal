add_priv_user courier:courier -d /var/empty -s /usr/bin/false &&

OPTS+=" --sbindir=/usr/bin"

./configure --prefix=/usr \
            --syconfdir=/etc/courier \
            --libdir=/usr/lib \
            --libexecdir=/usr/lib \
            --localstatedir=/var/spool/courier \
            --enable-unicode \
            --enable-workarounds-for-imap-client-bugs \
            --enable-mimetypes=/etc/mime.types \
            --with-piddir=/run/courier \
            --with-trashquota \
            --with-db=gdbm \
            --with-random=/dev/urandom \
            --without-ispell \
            --with-mailuser=courier \
            --with-mailgroup=courier \
            --with-certdb=/etc/ssl/certs/ \
            --with-notice=unicode \
            $OPTS &&

default_make &&

# install the perftest-script for testings
install -Dm 755 courier/perftest1 /usr/lib/courier/perftest1 &&

# Install systemd configuration file which will set up empty /run/courier directory
# (and clean up after uninstall)
install -Dm 644 courier-mta.conf" /usr/lib/tmpfiles.d/courier-mta.conf &&

# create password file for webadmin -> standard archwebadmin
echo lunarwebadmin > /etc/courier/webadmin/password &&
chown courier:courier /etc/courier/webadmin/password &&
chmod 400 /etc/courier/webadmin/password

# install the imapd binary as /usr/lib/courier/courierimapd and modify usr/share scripts.
# courier-mta by default installs usr/bin/imapd as the binary, usr/share/imapd as script file
# and usr/sbin/imapd as link to /usr/share/imapd
# hence the binary gets overwritten by the link because bin and sbin are the same location
install -m 755 courier/imapd" /usr/lib/courier/courierimapd
sedit 's/\/usr\/bin\/imapd/\/usr\/lib\/courier\/courierimapd/' /usr/share/imapd /usr/share/imapd-ssl
