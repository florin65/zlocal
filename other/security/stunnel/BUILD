add_priv_group stunnel

OPTS+=" --sysconfdir=/etc \
        --localstatedir=/var \
        --enable-ipv6 \
        --disable-libwrap" &&

default_config &&

mkdir -p /etc/stunnel &&

if [ "$CERTIFICATE" = "y" ]; then
   rm -f /etc/ssl/certs/stunnel.pem
   make cert
fi &&

default_make &&

if module_installed systemd; then
   install -Dm644 tools/stunnel.service /usr/lib/systemd/system/stunnel.service
fi
