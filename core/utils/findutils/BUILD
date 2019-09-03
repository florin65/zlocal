# Don't build or install locate
sed -e '/^SUBDIRS/s/locate//' -e 's/frcode locate updatedb//' -i Makefile.in &&

default_config &&

# don't build locate, but the docs want a file in there
make -C locate dblocation.texi &&

default_make

#mkdir -p /var/cache/locate &&
#if [ -f /var/cache/locatedb ]; then
#  mv /var/cache/locatedb /var/cache/locate
#fi
