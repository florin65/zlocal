git clone git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
rm -fR linux-firmware/.git
tar cf - linux-firmware | xz -9 > linux-firmware-$(date +%Y%m%d).tar.xz
sha256sum linux-firmware-$(date +%Y%m%d).tar.xz
rm -fR linux-firmware