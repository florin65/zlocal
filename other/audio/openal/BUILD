mkdir -p build &&
cd build &&
cmake ../ -G Ninja \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_LIBDIR=lib &&
ninja &&

mkdir -p /etc/openal &&
if [ ! -e /etc/openal/alsoft.conf ]; then
  install -m 644 $SOURCE_DIRECTORY/alsoftrc.sample /etc/openal/alsoft.conf
fi
