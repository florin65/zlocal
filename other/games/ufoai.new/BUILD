./configure --prefix=/usr \
            --bindir=/usr/games \
            --libdir=/usr/lib \
            --datadir=/usr/share/games/ufoai \
            --localedir=/usr/share/games/ufoai/base/i18n \
            --enable-release \
            --disable-testall \
            $OPTS &&

default_make &&

install -m644 debian/ufoai.desktop debian/ufoded.desktop /usr/share/applications &&
install -m644 debian/ufoai.xpm debian/ufoded.xpm /usr/share/pixmaps &&
install -m644 debian/ufo.6 debian/ufoded.6 /usr/share/man/man6
