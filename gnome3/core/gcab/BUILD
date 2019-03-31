mkdir -p build &&

meson build --prefix /usr \
            -Denable-gtk-doc=true &&

ninja -C build &&

prepare_install &&

ninja -C build install
