cd patched-fonts &&

prepare_install &&

find . -iname "*.ttf"    -execdir install -Dm644 {} /usr/share/fonts/TTF/{} \;
find . -iname "*.otf"    -execdir install -Dm644 {} /usr/share/fonts/OTF/{} \;
find . -iname "*.pcf.gz" -execdir install -Dm644 {} /usr/share/fonts/misc/{} \;
find . -iname "*.psf.gz" -execdir install -Dm644 {} /usr/share/kbd/consolefonts/{} \;
