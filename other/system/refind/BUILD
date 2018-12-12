make -j1 gnuefi &&

make -j1 fs_gnuefi &&

prepare_install &&
install -d /usr/{bin,share/${MODULE}/{drivers_x64,fonts,icons/svg,images,keys,tools_x64}} &&
install -m 0644 ${MODULE}/${MODULE}_x64.efi /usr/share/${MODULE}/${MODULE}_x64.efi &&
install -m 0644 drivers_x64/*.efi /usr/share/${MODULE}/drivers_x64/ &&
install -m 0644 gptsync/gptsync_x64.efi /usr/share/${MODULE}/tools_x64/gptsync_x64.efi &&

for F in ${MODULE}-install ${MODULE}-mkdefault mkrlconf mvrefind fonts/mkfont.sh; do
   install -m 0755 ${F} /usr/bin/$(basename ${F})
done &&

sed -i -e 's,RefindDir="$ThisDir/refind",RefindDir="/usr/share/refind",g' /usr/bin/${MODULE}-install &&

install -m 0644 fonts/*.png /usr/share/${MODULE}/fonts/ &&
install -m 0644 icons/*.png /usr/share/${MODULE}/icons/ &&
install -m 0644 icons/svg/*.svg /usr/share/${MODULE}/icons/svg/ &&
install -m 0644 images/*.{bmp,png,svg} /usr/share/${MODULE}/images/ &&
install -m 0644 keys/*.{cer,crt,der} /usr/share/${MODULE}/keys/ &&
install -m 0644 ${MODULE}.conf-sample /usr/share/${MODULE}/${MODULE}.conf-sample
