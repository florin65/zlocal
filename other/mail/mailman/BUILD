add_priv_user mailman:mailman

mkdir /var/mailman                 2>/dev/null
chown mailman.mailman /var/mailman 2>/dev/null
chmod 02775 /var/mailman           2>/dev/null

./configure --prefix=/usr/lib/mailman      \
            --with-var-prefix=/var/mailman \
            --with-username=mailman        \
            --with-groupname=mailman       \
            --with-python=/usr/bin/python  \
            --with-mail-gid=$MAIL_GID      \
            --with-cgi-gid=$MAILMAN_GID    \
            --with-mailhost=localhost      \
            --with-urlhost=localhost      &&

make "CC=gcc"           \
     "OPT=$CFLAGS"      \
     "AUXLIBS=$AUXLIBS" \
     "CCARGS=CCARGS"   &&

prepare_install &&
make install &&

install -d -m755 /etc/$pkgname &&
ln -sv /usr/lib/mailman/Mailman/mm_cfg.py "$pkgdir/etc/$pkgname/mm_cfg.py"

# fix some permissions to satisfy check_perms
chown -R mailman:mailman /{usr/lib/mailman,var/lib/mailman,etc/mailman/*} &&
chown http:mailman /var/lib/mailman/archives/private &&
chmod 2770 /var/lib/mailman/archives/private &&
chmod 2755 /usr/lib/mailman/cgi-bin/* &&
chmod 2755 /usr/lib/mailman/mail/mailman &&

install -Dm 644 $SCRIPT_DIRECTORY/sysusers.d/mailman.conf /usr/lib/sysusers.d/mailman.conf
