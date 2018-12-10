prepare_install &&

# fix line endings
find . -name '*.vim' -exec sed -i -e 's,\r,\n,g' {} \; &&

install -dm644 /usr/share/vim/vimfiles/colors &&
install -m644 colors/*.vim /usr/share/vim/vimfiles/colors/ &&

# delete existing colors
rm -r /usr/share/vim/vimfiles/colors/{blue.vim,delek.vim,desert.vim,torte.vim}
