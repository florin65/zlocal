export SETUPTOOLS_SCM_PRETEND_VERSION=$VERSION

python3 setup.py build &&

prepare_install &&

python3 setup.py install --root=/ &&

if module_installed Sphinx; then
  cd docs
  make man &&
  install -Dm644 docs/_build/man/sshuttle.1 /usr/share/man/man1/sshuttle.1
fi &&

install -d /etc/sshuttle &&
install -m644 $SCRIPT_DIRECTORY/{tunnel.conf,prefixes.conf} /etc/sshuttle
