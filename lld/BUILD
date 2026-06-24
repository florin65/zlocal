OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_DOCDIR=share/doc \
        -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX \
        -DCMAKE_SKIP_INSTALL_RPATH=ON \
        -DBUILD_SHARED_LIBS=ON \
        -DLLVM_INCLUDE_TESTS=ON \
        -DLLVM_LINK_LLVM_DYLIB=ON \
        -DLLVM_MAIN_SRC_DIR=$MODULE-$VERSION \
        -DLLVM_INCLUDE_TESTS=OFF \
        -DLLVM_EXTERNAL_LIT=/usr/bin/lit \
        -DLLVM_BUILD_DOCS=OFF \
        -Wno-dev"

cd lld &&

#cmake .. "${OPTS[@]}" &&
#ninja &&

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&

cmake --install $MODULE-$VERSION

#DESTDIR="/usr" ninja install &&

# https://bugs.llvm.org/show_bug.cgi?id=42455
install -Dm644 -t "/usr/share/man/man1" docs/ld.lld.1 &&

# Remove documentation sources
rm -rf /usr/share/doc/lld/html/{_sources,.buildinfo}

