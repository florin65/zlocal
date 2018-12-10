prepare_install &&

# UseVimball will fail if the given directory does not exist. Create it.
install -d /usr/share/vim/vimfiles/ &&
vim -c "UseVimball /usr/share/vim/vimfiles/" -c q /usr/src/$MODULE-$VERSION.vmb &&
rm /usr/share/vim/vimfiles/.VimballRecord
rm /usr/share/vim/vimfiles/doc/tags
