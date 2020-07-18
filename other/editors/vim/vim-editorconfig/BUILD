prepare_install &&

export EDITORCONFIG_VIM_EXTERNAL_CORE=/usr/bin/editorconfig

mkdir -p /usr/share/vim/vimfiles/{plugin,doc,autoload} &&
cp -r plugin/* /usr/share/vim/vimfiles/plugin/ &&
cp doc/editorconfig.txt /usr/share/vim/vimfiles/doc/ &&
cp autoload/*.vim /usr/share/vim/vimfiles/autoload/ &&
install -vDm 644 "autoload/editorconfig_core/"*.vim -t /usr/share/vim/vimfiles/autoload/
