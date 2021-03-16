OPTS+=" -Dsanitize=true \
        -Dbuild_docs=true"

default_meson_build &&

mkdir -p /etc/xdg &&
install -D -m644 picom.sample.conf /etc/xdg/ &&
install -D -m644 $SCRIPT_DIRECTORY/picom.conf /etc/xdg/
