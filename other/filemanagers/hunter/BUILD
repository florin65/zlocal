prepare_install &&

cargo build --release &&

mkdir -p /usr/share/doc/hunter &&
install -Dm 644 README.md -t /usr/share/doc/hunter &&
install -D {target/release/hunter,extra/scope.sh} -t /usr/bin
