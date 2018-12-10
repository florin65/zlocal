cd src

./configure  --build=$BUILD \
             --prefix=/usr \
             --sysconfdir=/etc \
             --localstatedir=/var \
             --mandir=/usr/share/man \
             $OPTS                  &&

OPTS+=" --sbindir=/usr/bin" &&

sedit "s/docdir=\/usr\/doc/docdir=\/usr\/share\/doc/" Makefile &&
make &&
cd ../gui &&
default_make &&
cd ../src &&
make install &&

ln -sf /usr/bin/pppoe-start   /usr/bin/adsl-start   &&
ln -sf /usr/bin/pppoe-stop    /usr/bin/adsl-stop    &&
ln -sf /usr/bin/pppoe-status  /usr/bin/adsl-status  &&
ln -sf /usr/bin/pppoe-connect /usr/bin/adsl-connect &&
ln -sf /usr/bin/pppoe-setup   /usr/bin/adsl-setup   &&

mkdir -p /usr/share/applnk/Internet &&
mkdir -p /usr/share/gnome/apps/Internet &&
install $SCRIPT_DIRECTORY/tkpppoe.kdelnk /usr/share/applnk/Internet/ &&
cp $SCRIPT_DIRECTORY/tkpppoe.desktop /usr/share/gnome/apps/Internet/ &&

case $CONFIG_PPPOE in
  y|Y|j|J) sh scripts/pppoe-setup ;;
      *) true ;;
esac
