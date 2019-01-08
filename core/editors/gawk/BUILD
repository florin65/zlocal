# make a backup for gawk app
cp -f /usr/bin/gawk /usr/bin/gawk.old &&

OPTS+="--build=$BUILD \
       --prefix=/usr \
       --bindir=/bin \
       --mandir=/usr/share/man \
       --infodir=/usr/share/info \
       ac_cv_func_working_mktime=yes"

if module_installed readline; then
   OPTS+=" --with-readline"
else
   OPTS+=" --without-readline"
fi

default_config &&
make &&
prepare_install &&

# restore backup gawk app
mv /usr/bin/gawk.old /usr/bin/gawk &&
ln -sf /usr/bin/gawk /usr/bin/awk &&

make install &&

ln -sf /usr/bin/gawk /usr/bin/awk &&
rm -f /usr/bin/{,p}gawk-* &&

mv /etc/profile.d/gawk.{sh,rc} &&
rm -f /etc/profile.d/gawk.csh
