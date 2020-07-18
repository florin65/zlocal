INST_PTH=/usr/share/vim/vimfile

prepare_install &&

mkdir -p "$INST_PTH"/{colors,autoload/airline/lightline} &&

# nord colorscheme
install -m 644 colors/nord.vim "$INST_PTH"/colors/ &&

# nord colorscheme for airline
install -m 644 autoload/airline/themes/nord.vim "$INST_PTH"/autoload/airline/themes/ &&

# nord colorscheme for lightline
install -m 644 autoload/lightline/colorscheme/nord.vim "$INST_PTH"/autoload/lightline/colorscheme/
