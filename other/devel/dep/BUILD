export GOPATH="$SOURCE_DIRECTORY"

mkdir -p src/github.com/golang
ln -rTsf "$SOURCE_DIRECTORY" src/github.com/golang/dep

cd src/github.com/golang/dep
go install -gcflags "all=-trimpath=${GOPATH}/src" -asmflags "all=-trimpath=${GOPATH}/src" ./cmd/... &&

prepare_install &&

install -Dm755 bin/dep /usr/bin/