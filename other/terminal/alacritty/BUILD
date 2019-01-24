env CARGO_INCREMENTAL=0 cargo build --release --locked &&

prepare_install &&

desktop-file-install -m 644 --dir /usr/share/applications/ alacritty.desktop &&

install -D -m755 target/release/alacritty /usr/bin/ &&
install -D -m644 alacritty.man /usr/share/man/man1/alacritty.1 &&
install -D -m644 alacritty-completions.bash /usr/share/bash-completion/completions/alacritty &&
#install -D -m644 "alacritty-completions.zsh /usr/share/zsh/site-functions/_alacritty

# alacritty terminfo
install -dm 755 /usr/share/terminfo/a/ &&
tic -o /usr/share/terminfo alacritty.info
