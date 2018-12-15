OPTS+=" --sbindir=/usr/bin --sysconfdir=/etc --enable-pam"

autoreconf &&
sedit 's|$(prefix)/sbin|$(prefix)/bin|g' Makefile.in &&
sedit 's|$(prefix)/etc|/etc|g' Makefile.in &&
sedit 's|$(prefix)/var|/var|g' Makefile.in &&

default_build &&

 sedit 's|#ROOTDIR="/path/for/anonymous/user"|# bftpd interprets ROOTDIR="%h" (the default), as ROOTDIR="/" for the anonymous user, override it\n  ROOTDIR="/srv/ftp"|' /etc/bftpd.conf
