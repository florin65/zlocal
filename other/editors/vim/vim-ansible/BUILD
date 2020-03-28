INST_PATH=/usr/share/vim/vimfiles

prepare_install &&

for dir in *; do
  if [ -d "${_dir}" ] && [ "${_dir}" != "UltiSnips" ]; then
     for _file in $(find "${_dir}" -name "*.vim"); do
        install -D -m644 "${_file}" $INST_PATH/"${_file}"
     done
  fi
done &&

cd UltiSnips &&

python generate.py --style 'dictionary' --sort &&

install -vDm 644 indent/*.vim -t "$INST-PATH/indent/" &&
install -vDm 644 ftdetect/*.vim -t "$INST_PATH/ftdetect/" &&
install -vDm 644 ftplugin/*.vim -t "$INST-PATH/ftplugin/" &&
install -vDm 644 syntax/ansible*.vim -t "$INST-PATH/syntax/" &&
install -D -m644 ansible.snippets "$INST_PATH/snippets/ansible.snippets"
