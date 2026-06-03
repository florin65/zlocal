prepare_install &&

INSTPTH=/usr/share/vim/vimfiles

mkdir -p $INSTPTH &&
mkdir -p "/usr/share/doc/${MODULE}" &&
cp -r -t $INSTPTH/ autoload doc lib nerdtree_plugin plugin syntax &&
install -Dm 644 README.markdown CHANGELOG.md -t "/usr/share/doc/${MODULE}"
