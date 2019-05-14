prepare_install &&

pushd fpcsrc/compiler &&
fpcmake -Tall &&
popd &&
make build NOGDB=1 &&

pkdir="${SOURCE_DIRECTORY}/build"
mkdir -p $pkgdir

exit 1

make -j1 PREFIX="$pkgdir"/usr install NOGDB=1

export PATH="$pkgdir"/usr/bin:$PATH

[ "$CARCH" = "x86_64" ] && ln -s /usr/lib/fpc/${VERSION}/ppcx64 "$pkgdir"/usr/bin/

mkdir -p "$pkgdir"/etc
"$pkgdir"/usr/lib/fpc/${VERSION}/samplecfg "$pkgdir"/usr/lib/fpc/${VERSION} "$pkgdir"/etc

# use -fPIC by default
echo -e "#ifdef cpux86_64\n# for x86_64 use -fPIC by default\n-Cg\n#endif" >> "$pkgdir/etc/fpc.cfg"

mv "$pkgdir"/usr/man "$pkgdir"/usr/share/

find "$pkgdir"/etc/ -type f -exec sed -i "s|"$pkgdir"||g" {} \;
     sed -e "s|$pkgdir||g" -i "$pkgdir/usr/lib/fpc/${VERSION}/ide/text/fp.cfg"

exit 1
