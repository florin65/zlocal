prepare_install &&

install -d /usr/share/vim/vimfiles/{plugin,doc,autoload/vimfiler/columns,pythonx/vim_devicons,nerdtree_plugin,autoload/airline/extensions/tabline/formatters} &&

find . -type d -exec chmod 755 '{}' \; &&

cp plugin/* /usr/share/vim/vimfiles/plugin/ &&
cp nerdtree_plugin/webdevicons.vim /usr/share/vim/vimfiles/nerdtree_plugin/webdevicons.vim &&

install -Dm0644 doc/webdevicons.txt /usr/share/vim/vimfiles/doc/webdevicons.txt &&
cp autoload/airline/extensions/tabline/formatters/webdevicons.vim /usr/share/vim/vimfiles/autoload/airline/extensions/tabline/formatters/webdevicons.vim &&
cp autoload/vimfiler/columns/devicons.vim /usr/share/vim/vimfiles/autoload/vimfiler/columns/devicons.vim &&
cp -dr pythonx/* /usr/share/vim/vimfiles/pythonx/
