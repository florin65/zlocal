## "1" to enable IA32-EFI build in x86_64 arch, "0" to disable
IA32_EFI_IN_X64="1"

unset CPP CXX CC CFLAGS CXXFLAGS CPPFLAGS LDFLAGS &&

./autogen.sh

OPTS+=" --enable-nls \
        --enable-mm-debug \
        --enable-boot-time \
        --enable-cache-stats \
        --disable-werror \
        --disable-efiemu \
        --with-grubdir=grub \
        --with-bootdir=/boot" &&

OPTS+=" --sbindir=/usr/bin" &&

if in_depends $MODULE efibootmgr; then
    OPTS+=" --with-platform=efi" &&
    if [[ 'arch' == "x86_64" ]]; then
        if [[ "${_IA32_EFI_IN_X64}" == "1" ]]; then
		    # Build grub i386 efi stuff
		_   EFIARCH="i386"
            OPTS_TMP=OPTS
            OPTS+=" --target=${EFIARCH}" &&
            default_config &&
            make &&
            OPTS=OPTS_TMP
        fi
        EFIARCH="X86_64"
    else
        [[ 'arch' == "i686" ]] && EFIARCH="i386"
    fi
    OPTS+=" --target=${EFIARCH}"
else
    # Set dependent variables for BIOS build
    OPTS+=" --target=i386 --with-platform=pc"
fi &&

default_build
