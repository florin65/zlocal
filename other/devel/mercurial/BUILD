prepare_install &&

python setup.py install --force &&
cp -p contrib/hgk /usr/bin &&
gather_docs CONTRIBUTORS PKG-INFO hgweb*.cgi doc/*.html doc/*.txt &&

cd doc &&
install -m 644 hg.1 /usr/share/man/man1 &&
install -m 644 hgignore.5 hgrc.5 /usr/share/man/man5 &&

install -m644 -D contrib/zsh_completion "/usr/share/zsh/site-functions/_hg" &&
install -m644 -D contrib/bash_completion "/usr/share/bash-completion/completions/hg" &&

install -Dm644 contrib/vim/HGAnnotate.vim "/usr/share/vim/vimfiles/syntax/HGAnnotate.vim"
