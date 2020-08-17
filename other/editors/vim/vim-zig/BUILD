prepare_install &&

INSTPTH=/usr/share/vim/vimfiles

for _dir in autoload/zig ftdetect ftplugin indent plugin syntax ; do
     install -dm755 "$INSTPTH/$_dir"
     for _file in "$_dir"/* ; do
         install -Dm644 "$_file" "$INSTPTH/$_file"
     done
done
