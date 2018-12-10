prepare_install &&

cd src

# build tools first
make tools gate &&
make clean &&

# build the 64bit version
cd ../src64
make  &&
make clean &&

install -d -m755 /usr/lib/picolisp &&
cp -a * /usr/lib/picolisp/ &&

cd $SOURCE_DIRECTORY &&
cp -a bin /usr/lib/picolisp/ &&
ln -sf /usr/lib/picolisp/bin/* /usr/bin/
