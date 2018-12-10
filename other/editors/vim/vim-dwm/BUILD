prepare_install &&

INSTPTH=/usr/share/vim/vimfiles

install -dm755 $INSTPTH
for f in doc plugin; do
  rm $f/.git*
  cp -av $f $INSTPTH/
done

