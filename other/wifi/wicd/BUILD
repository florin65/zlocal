OPTS+=" --no-install-init \
        --resume=/usr/share/wicd/scripts/ \
        --suspend=/usr/share/wicd/scripts/ \
        --verbose \
        --lib=/usr/lib \
        --no-install-gnome-shell-extensions" &&

if module_installed systemd; then
  OPTS+=" --systemd=/usr/lib/systemd/system"
fi &&

OPTS+=" --sbin=/usr/bin" &&

python setup.py configure $OPTS &&

python setup.py build &&

python setup.py compile_translations &&
mkdir -p translations/ast/LC_MESSAGES &&
msgfmt po/ast.po -o translations/ast/LC_MESSAGES/wicd.mo &&

prepare_install &&

python setup.py install --optimize=1 &&

cd build/lib/wicd
for i in *.py; do
  install -Dm 755 $i /usr/lib/wicd/$i
done &&
rm -rf /usr/share/autostart

install -m644 $SCRIPT_DIRECTORY/wicd.desktop /usr/share/applications/
