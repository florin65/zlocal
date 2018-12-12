# It wants a user "usbmux"
add_priv_user usbmux:usbmux -s /bin/false -d /var/usbmuxd &&

./autogen.sh &&

OPTS+=" --sbindir=/usr/bin" &&

default_build
