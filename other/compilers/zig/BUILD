OPTS=" -DCMAKE_BUILD_TYPE=None \
       -DCMAKE_INSTALL_PREFIX=/usr \
       -DZIG_FORCE_EXTERNAL_LLD=ON \
       -DZIG_SKIP_INSTALL_LIB_FILES=ON"

#-DZIG_LIBC_LIB_DIR=$(dirname $(cc -print-file-name=crt1.o)) \
#       -DZIG_LIBC_STATIC_LIB_DIR=$(dirname $(cc -print-file-name=crtbegin.o)) \
#       -DZIG_LIBC_INCLUDE_DIR=$(echo -n | cc -E -x c - -v 2>&1 | grep -B1 'End of search list.' | head -n1 | cut -c 2-)"

default_cmake_build

# test the compiler
./zig build --build-file ../build.zig test
