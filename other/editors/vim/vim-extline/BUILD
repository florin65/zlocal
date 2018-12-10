prepare_install &&

install -d /usr/share/vim/vimfiles/{plugin,doc,autoload} &&
find . -type d -exec chmod 755 '{}' \; &&
cp -dr plugin/* /usr/share/vim/vimfiles/plugin/ &&
install -Dm0644 doc/extline.txt /usr/share/vim/vimfiles/doc/extline.txt &&
cp -r autoload/extline.vim /usr/share/vim/vimfiles/autoload/
