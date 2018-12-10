pacman -S libuv libffi python2
mkdir -p ~/projects/pixie-lang
cd ~/projects/pixie-lang
git clone https://github.com/pixie-lang/pixie
cd pixie
PYTHON="/usr/bin/python2" make build_with_jit
mkdir -p ~/bin
cd ~/bin
ln -sf ~/projects/pixie-lang/pixie/pixie-vm pxi
export PATH=$PATH:~/bin
pxi
