prepare_install &&

install -dm755 /usr/share/vim/vimfiles &&

rm -fr {autoload,doc,syntax} &&
cp -fR * /usr/share/vim/vimfiles/

# Fix perms
chmod -R a=r,a+X,u+w /usr/share/vim/vimfiles
