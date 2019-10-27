prepare_install &&

INSTPTH=/usr/share/nvim/runtime

mkdir -p $INSTPTH/autoload
install -Dm755 plug.vim $INSTPTH/autoload/ &&
install -Dm 644 $SCRIPT_DIRECTORY/neovim-plug.init.vim /usr/share/neovim-plug/init.vim.sample

