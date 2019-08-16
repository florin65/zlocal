OPTS+=" -Dsanitize=true \
        -Db_ndebug=false"

default_meson_build &&
exit 1
mkdir -p /etc/xdg &&
install -D -m644 compton.sample.conf /etc/xdg/compton.conf.example
install -D -m644 $SCRIPT_DIRECTORY/compton.conf /etc/xdg/
