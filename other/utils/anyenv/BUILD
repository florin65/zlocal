prepare_install &&

mkdir -p /usr/share/doc/$MODULE &&
mkdir -p /usr/lib/$MODULE/libexec &&
mkdir -p /usr/lib/$MODULE/completions &&

rm -f ./completions/anyenv.fish

install -m 644 ./README.md /usr/share/doc/$MODULE &&
install -m 755 ./libexec/* /usr/lib/anyenv/libexec/ &&
install -m 644 ./completions/* /usr/lib/anyenv/completions/ &&

ln -s /usr/lib/anyenv/libexec/anyenv /usr/bin/
