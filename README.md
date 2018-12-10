# zlocal
A good part of my zlocal repo for Lunar Linux

## Attention!!! It's still WIP.

## Instructions

1. Start by installing `openrc` along with `elogind` (which pulls in `eudev`) and `dbus` by running:
```
lin -rc openrc elogind dbus
```

2. Move all binaries into `/usr/bin`:
```
mv -f /bin/* /sbin/* /usr/sbin/* /usr/bin
```

3. Make symlinks to `/usr/bin` to emulate the classic file system
```
ln -sf /usr/bin /bin
ln -sf /usr/bin /sbin
ln -sf /usr/bin /usr/sbin
```

## To be continued...
