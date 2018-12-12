default_cmake_build &&

# Make vim modules work
mkdir -p /usr/share/vim &&
echo "set runtimepath+=/usr/share/vim/vimfiles" > /usr/share/nvim/sysinit.vim &&

install -Dm644 runtime/nvim.desktop /usr/share/applications/nvim.desktop &&
install -Dm644 runtime/nvim.png /usr/share/pixmaps/nvim.png
