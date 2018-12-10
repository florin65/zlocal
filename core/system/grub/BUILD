message " ${PROBLEM_COLOR}Warning! ${DEFAULT_COLOR}This module must be installed only on 32 bits systems."
sleep 5

# Handle the optional splash patch
if [ $WITH_SPLASH = "y" ]; then
  message "Adding support for grub bootmenu splash images..." &&
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  sedit 's:AM_INIT_AUTOMAKE:&\nAM_PROG_AS:g' configure.ac &&
  autoreconf --force --install --verbose
fi &&

unset CFLAGS CXXFLAGS CPPFLAGS &&
export CFLAGS=" -fno-strict-aliasing -fno-stack-protector" &&

default_build &&

gzip -9 ChangeLog &&
mkdir -p $DOCUMENT_DIRECTORY/grub &&
cp ChangeLog.gz NEWS TODO $DOCUMENT_DIRECTORY/grub &&

if [ ! -d /boot/grub ]; then
  mkdir -p /boot/grub
fi &&
cp /usr/lib/grub/i386-pc/*1_5 /usr/lib/grub/i386-pc/stage* /boot/grub
