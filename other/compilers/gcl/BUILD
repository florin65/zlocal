unset LDFLAGS

./configure --prefix=/usr \
            --enable-ansi \
            --enable-notify=no \
            --enable-dynsysbfd=no \
            --enable-statsysbfd=no &&

if ! module_installed emacs; then
   sedit "s!EMACS_SITE_LISP=!EMACS_SITE_LISP=/usr/share/gcl!" makedefs &&
   sedit "s!EMACS_SITE_LISP=!EMACS_SITE_LISP=/usr/share/gcl!" makedefc
fi &&

default_make