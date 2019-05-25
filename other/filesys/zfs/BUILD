OPTS+=" --sbindir=/usr/bin"

OPTS+=" --libdir=/usr/lib \
        --with-linux=$BUILD_DIRECTORY/linux \
        --with-linux-obj=$BUILD_DIRECTORY/linux \
        --with-udevdir=/usr/lib/udev \
        --with-config=all \
        --disable-static \
        --disable-sysvinit"

default_config &&
make &&
prepare_install &&

devoke_installwatch &&

mkdir __pkg &&
make DESTDIR=$SOURCE_DIRECTORY/__pkg install &&
cd $SOURCE_DIRECTORY/__pkg &&
cp -fR lib/*  usr/lib/ &&
cp -fR sbin/* usr/bin/ &&
rm -fr lib sbin usr/src &&

invoke_installwatch &&

cp -rf --remove-destination $SOURCE_DIRECTORY/__pkg/* /
