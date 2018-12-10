mkdir -p externals
tar -zxf libuv-1.8.0.tar.gz
cd libuv-1.8.0
sh autogen.sh
./configure --prefix=/home/florin/projects/externals
make
make install
cd ..
tar -cjf `uname -s`-`uname -m`.tar.bz2 externals/*
