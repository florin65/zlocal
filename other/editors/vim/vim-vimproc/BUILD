prepare_install &&

make &&

for f in autoload/vimproc.vim autoload/vimproc/* doc/* plugin/* lib/*; do
  install -Dm644 $f /usr/share/vim/vimfiles/$f
done