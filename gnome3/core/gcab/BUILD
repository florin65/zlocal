mkdir -p build &&

meson build --prefix /usr \
            -D enable-gtk-doc=true &&

ninja -C build &&

prepare_install &&

ninja -C build install
