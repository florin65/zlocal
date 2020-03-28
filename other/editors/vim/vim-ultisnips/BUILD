INST_PATH=/usr/share/vim/vimfiles

prepare_install &&

cp -r -t "$INST_PATH" pythonx after doc ftdetect autoload ftplugin plugin syntax &&

cd $BUILD_DIR/vim-snippets &&

cp -r -t "$INST_PATH" UltiSnips autoload snippets

# compile .pyc and .pyo files
#find "${pkgdir}" -name '*.py' -exec python -mpy_compile {} + &&
#find "${pkgdir}" -name '*.py' -exec python -O -mpy_compile {} +
