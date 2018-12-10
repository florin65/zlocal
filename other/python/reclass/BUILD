python setup.py build &&

prepare_install &&

python setup.py install --root=/ &&

#create default dir
mkdir -p /etc/reclass/nodes &&
mkdir -p /etc/reclass/classes &&
install -Dm644 $SCRIPT_DIRECTORY/reclass-config.yml /etc/reclass/reclass-config.yml &&

#examples are usefull
mkdir -p /usr/share/doc/$MODULE/examples &&
for i in examples/*; do
  cp -R $i /usr/share/doc/$MODULE/examples/"$(basename $i)" &&
  chown -R root:root /usr/share/doc/$MODULE/examples/"$(basename $i)"
done
