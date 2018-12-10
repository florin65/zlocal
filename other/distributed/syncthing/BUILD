#export GOPATH=$BUILD_DIRECTORY &&

if [ "$(arch)" == "i686" ]; then
  go run build.go -no-upgrade -goarch 386 build
else
  if [ "$(arch)" == "x86_64" ]; then
    go run build.go -no-upgrade -goarch amd64 build
  else
    go run build.go -no-upgrade build
  fi
fi &&

prepare_install &&

install -Dm755 $MODULE /usr/bin/$MODULE &&
install -Dm644 README.md /usr/share/doc/$MODULE/README.md &&
install -Dm644 etc/linux-systemd/system/$MODULE@.service /usr/lib/systemd/system/$MODULE@.service &&
#install -Dm644 etc/linux-systemd/user/$MODULE.service /usr/lib/systemd/user/$MODULE.service &&

cd man &&
for file in $(find . -name '*.1' -print); do
  install -Dm644 $file /usr/share/man/man1/$file
done &&
for file in $(find . -name '*.5' -print); do
  install -Dm644 $file /usr/share/man/man5/$file
done &&
for file in $(find . -name '*.7' -print); do
  install -Dm644 $file /usr/share/man/man7/$file
done
