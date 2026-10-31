OPTS+=" -Dzlib=enabled \
        -Dxz=enabled \
        -Dopenssl=enabled"

default_meson_build &&

install -dm755 /{etc,usr/lib}/{depmod,modprobe}.d &&

# Add symlinks to kmod
ln -sf /usr/bin/kmod "/usr/bin/lsmod"  &&
ln -sf /usr/bin/kmod "/usr/bin/modinfo"  &&
for tool in {ins,rm,dep}mod modprobe; do
  ln -sf /usr/bin/kmod "/usr/sbin/$tool"
done &&

# Some non-usr-merged system considerations
if [[ ! -L /bin && ! -L /sbin ]]; then
  ln -sf /usr/bin/kmod "/bin/lsmod"  &&
  ln -sf /usr/bin/kmod "/bin/modinfo"  &&
  for tool in {ins,rm,dep}mod modprobe; do
    ln -sf /usr/bin/kmod "/sbin/$tool"
  done
fi

