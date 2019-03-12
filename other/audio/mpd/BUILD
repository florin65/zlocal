OPTS+=" -D zlib=enabled \
	-D shine=disable \
	-D sndio=disabled \
	-D adplug=disabled \
        -D sidplay=disabled \
	-D tremor=disabled"

if module_installed systemd; then
    OPTS+=" -D documentation=false -D systemd=enabled -D systemd_system_unit_dir=enabled"
  else
    OPTS+=" -D documentation=false -D systemd=disabled -D systemd_system_unit_dir=disabled"
fi

default_meson_build &&

if [[ ! -e /etc/mpd.conf ]]; then
  install -m0644 $SCRIPT_DIRECTORY/mpd.conf /etc/
fi
