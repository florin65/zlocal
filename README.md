# zlocal
A good part of my zlocal repo for Lunar Linux

## Attention!!! It's still WIP.

## Instructions

1. Install the repo into your zlocal with:
```
cd /var/lib/lunar/moonbase/zlocal
git clone https://github.com/Florin65/zlocal.git moonbase-openrc
```

2. Start by installing the following:
```
lin -rc openrc eudev elogind dbus polkit
```

3. From a rescue boot, mount the Lunar root partition.
Move all binaries and libraries into their /usr respective directories:
```
mv -f /bin/* /sbin/* /usr/sbin/* /usr/bin/
mv -f /lib/* /usr/lib
```

4. Make compatibility symlinks to emulate the classic file system
```
ln -sf /usr/bin /bin
ln -sf /usr/bin /sbin
ln -sf /usr/bin /usr/sbin
ln -sf /usr/lib /lib
```

5. Boot to Lunar and do the magick with either
```
lunar renew
```

or this for core install

```
lunar rebuild
```
