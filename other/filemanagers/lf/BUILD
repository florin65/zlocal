export GOPATH=$SOURCE_DIRECTORY

mkdir -p $GOPATH/src &&
cd src &&
unpack $ARCHIVE_DIRECORY/$SOURCE &&

cd $GOPATH/src/$MODULE-$VERSION &&
dep ensure -v &&
go build &&

prepare_install &&

install -Dm755 lf-$VERSION /usr/bin/lf &&
install -Dm644 ./README.md /usr/share/doc/$MODULE/README.md