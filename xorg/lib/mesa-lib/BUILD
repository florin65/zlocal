NOCONFIGURE=1 ./autogen.sh &&

if [[ $GALLIUM == y ]]; then
  # Mesa Gallium mklib breaks build when linker flags are set
  bad_flags linker &&
  OPTS+=" -D osmesa=gallium \
          -D gallium-xa=true \
          -D gallium-extra-hud=true \
          -D gallium-opencl=disabled"

#        -D gallium-opencl=icd \
#        -D gallium-nine=true \

  OPTS+=" -D gallium-drivers=swrast,$(echo $GALLIUMDRIVER | sed s/\ /,/g)"
fi

if [[ $VULKAN == y ]]; then
  OPTS+=" -D vulkan-drivers=$(echo $VULKANDRIVER | sed s/\ /,/g)"
fi

OPTS+=" -D platforms=x11,drm" &&
if in_depends $MODULE wayland-protocols; then
  OPTS+=",wayland"
fi

OPTS+=" -D b_lto=false \
        -D b_ndebug=true \
        -D glx=dri \
        -D gbm=true \
        -D egl=true \
        -D dri3=true \
        -D gles1=true \
        -D gles2=true \
        -D valgrind=false \
        -D shared-glapi=true \
        -D texture-float=true \
        -D swr-arches=avx,avx2 \
        -D dri-drivers=$(echo $MESADRIVER | sed s/\ /,/g)" &&

default_meson_build &&

# indirect rendering
ln -s /usr/lib/libGLX_mesa.so.0 /usr/lib/libGLX_indirect.so.0
