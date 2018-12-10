# Set up python => python2 shim.
rm -rf python_bin &&
mkdir python_bin &&
cp $SCRIPT_DIRECTORY/python python_bin/ &&
export PATH="$(pwd)/python_bin:$PATH" &&
chmod 755 python_bin/python &&

cargo build --release &&

prepare_install &&

install -Dm755 target/release/amp /usr/bin/
