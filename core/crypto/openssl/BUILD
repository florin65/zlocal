# make sure the luser has the source for this one!
WANT_VERSION= download_module wget &&

# mark stack as non-executable
./config --prefix=/usr \
         --openssldir=/etc/ssl \
         shared \
         no-rc2 \
         no-rc4 \
         no-ssl2 \
         no-ssl3 \
         no-tls1 \
         no-tls1_1 \
         no-tls1_2 \
         no-idea \
         no-seed \
         no-deprecated \
         no-ssl3-method \
         no-tls1-method \
         no-tls1_1-method \
         no-tls1_2-method \
         enable-tls1_3 \
         $(arch | grep -q x86_64 && echo enable-ec_nistp_64_gcc_128) \
         "-Wa,--noexecstack" \
         $OPTS

sedit "/^CC/d" Makefile &&
sedit "s/-m486//g" Makefile &&
sedit "s/-O3/-Os/" Makefile &&
sedit "s/^CFLAG=/CFLAG=$CFLAGS /g" Makefile &&

make &&
prepare_install &&
make MANDIR=/usr/share/man install &&
cp $SOURCE_CACHE/$SOURCE2 /etc/ssl/certs/Makefile
