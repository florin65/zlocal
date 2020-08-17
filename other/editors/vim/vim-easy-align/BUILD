prepare_install &&

INSTPTH=/usr/share/vim/vimfiles

for _dir in autoload plugin doc ; do
     install -dm755 "$INSTPTH/$_dir"
     for _file in "$_dir"/easy_align.* ; do
         install -Dm644 "$_file" "$INSTPTH/$_file"
     done
done
