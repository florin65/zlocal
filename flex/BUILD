./configure --build=$BUILD \
            --prefix=/usr  \
            --disable-static \
            $OPTS &&

# prevent excessive overlinking due to libtool
sedit 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

sedit 's/ln -s/ln -sf/' Makefile &&

default_make &&

ln -sf flex /usr/bin/lex
