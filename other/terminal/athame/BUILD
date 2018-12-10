# normal readline pre_build
<-------

patch -p1 < ../readline.patch &&
cp -r ../vimbed .
cp ../athame.* .
cp ../athamerc .
cp ../athame_readline.h athame_intermediary.h

# normal readline build
<----

install -Dm644 athamerc /etc/athamerc
