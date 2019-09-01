OPTS+="--sbindir=/usr/bin \
       --sysconfdir=/etc/smtpd \
       --libexecdir=/usr/lib/smtpd \
       --with-path-mbox=/var/spool/mail \
       --with-path-empty=/var/empty \
       --with-path-socket=/run \
       --with-path-CAfile=/etc/ssl/certs/ca-certificates.crt \
       --with-user-smtpd=smtpd \
       --with-user-queue=smtpq \
       --with-group-queue=smtpq \
       --with-auth-pam \
       --with-cflags=-I/usr/include/openssl"

default_build &&

ln -sf /usr/bin/smtpctl /usr/bin/sendmail &&
ln -sf /usr/bin/smtpctl /usr/bin/mailq &&
ln -sf /usr/bin/smtpctl /usr/bin/newaliases &&
ln -sf /usr/bin/smtpctl /usr/bin/makemap &&

if [ -f /etc/smtpd/aliases ]; then
   # install an empty aliases file (used by the default config)
   install -Dm644 /dev/null /etc/smtpd/aliases
fi

