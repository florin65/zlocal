prepare_install &&

INSTPTH=/usr/share/vim/vimfiles/pack/$MODULE/start/$MODULE

for _dir in autoload autoload/vm/{,maps,special} doc plugin python ; do
     install -dm755 "$INSTPTH/$_dir"
     for _file in "$_dir"/* ; do
         install -Dm644 "$_file" "$INSTPTH/$_file"
     done
done
