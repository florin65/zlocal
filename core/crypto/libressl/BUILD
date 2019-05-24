OPTS+=" --enable-nc \
        --disable-static \
        --with-pic=yes \
        --with-openssldir=/etc/ssl"

#default_build

default_config &&
make

exit 1

#install -Dm 755 ./apps/nc/nc /usr/bin/ &&
#ln -sf nc /usr/bin/netcat &&
#install -Dm 644 ./apps/nc/nc.1 /usr/share/man/man1/ &&

#rm /etc/ssl/cert.pem &&
ln -sf /usr/lib/libssl.so /usr/lib/libssl.so.1.0.0 &&
ln -sf /usr/lib/libssl.so /usr/lib/libssl.so.1.1 &&
ln -sf /usr/lib/libcrypto.so /usr/lib/libcrypto.so.1.0.0 &&
ln -sf /usr/lib/libcrypto.so /usr/lib/libcrypto.so.1.1
