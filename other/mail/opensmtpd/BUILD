OPTS+=" --with-path-mbox=/var/spool/mail \
        --with-path-empty=/var/empty \
        --with-path-socket=/run \
        --with-user-smtpd=smtpd \
        --with-user-queue=smtpq \
        --with-group-queue=smtpq"

default_build &&

ln -sf /usr/bin/smtpctl /usr/bin/mailq &&
ln -sf /usr/bin/smtpctl /usr/bin/makemap &&
ln -sf /usr/bin/smtpctl /usr/bin/sendmail &&
ln -sf /usr/bin/smtpctl /usr/bin/newaliases &&

if [ ! -f /etc/smtpd/aliases ]; then
   # install an aliases file
#   install -Dm644 /dev/null /etc/smtpd/aliases
   install -Dm644 etc/aliases -t /etc/smtpd/
fi
