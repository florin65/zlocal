# Seems that ncurses-5.5 has problems with garbage in /usr/share/terminfo
# Note: ncurses-5.5 also has all the "screen" files for terminfo, so no recompile is needed
rm -rf /usr/share/terminfo &&

# ************************ WARNING *************************
# DO NOT MESS WITH THE CONFIGURE STUFF here unless you
# really know what you're doing! We chose the lib location
# specifically so we could link ncurses to bash which is
# needed at init time! If you move it you could break your
# system!
unset CC CXX &&

OPTS+=" PKG_CONFIG_LIBDIR=/usr/lib/pkgconfig" &&

set -x &&
./configure  --build=$BUILD                           \
             --prefix=/usr                            \
             --libdir=/usr/lib                        \
             --mandir=/usr/share/man                  \
             --disable-termcap                        \
             --enable-widec                           \
             --enable-pc-files                        \
             --enable-colorfgbg                       \
             --without-ada                            \
             --without-debug                          \
             --with-normal                            \
             --with-shared                            \
	     --with-cxx-shared                        \
             --with-cxx-binding                       \
             --with-manpage-format=gzip               \
	     --with-terminfo-dirs=/usr/share/terminfo \
             $OPTS                                   &&


default_make &&

# Do not break some essential apps like gawk
ln -sf libncursesw.so.6 /usr/lib/libncurses.so &&
ln -sf libncurses.so /usr/lib/libncurses.so.6 &&
ln -sf libncurses.so /usr/lib/libncurses.so.5 &&

devoke_installwatch &&

set +x &&

# Now to make ncurses wide
make clean &&

unset CC CXX &&

set -x &&
./configure  --build=$BUILD                           \
             --prefix=/usr                            \
             --libdir=/usr/lib                        \
             --includedir=/usr/include/ncursesw       \
             --mandir=/usr/share/man                  \
             --disable-termcap                        \
             --enable-colorfgbg                       \
             --enable-widec                           \
             --enable-pc-files                        \
             --without-ada                            \
             --without-debug                          \
             --with-normal                            \
             --with-shared                            \
	     --with-cxx-shared                        \
             --with-cxx-binding                       \
             --with-manpage-format=gzip               \
             --with-terminfo-dirs=/usr/share/terminfo \
            $OPTS                                    &&

set +x &&
default_make &&

# Do not break some essential apps like gawk
ln -sf /usr/lib/libncursesw.so.6 /usr/lib/libncurses.so &&
ln -sf /usr/lib/libncurses.so /usr/lib/libncurses.so.6 &&
ln -sf /usr/lib/libncurses.so /usr/lib/libncurses.so.5 &&

# some packages look for -lcurses during build
ln -sf /usr/lib/libncurses.so /usr/lib/libcurses.so

gather_docs ANNOUNCE TODO
