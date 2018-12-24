if in_depends $MODULE lapack ; then
  OPTS+=" -DLAPACK_LIBRARIES=/usr/lib/liblapack.so;/usr/lib/libblas.so;/usr/lib/libcblas.so \
          -DLAPACK_CBLAS_H=/usr/include/lapack/cblas.h \
          -DLAPACK_LAPACKE_H=/usr/include/lapack/lapacke.h"
fi

if in_depends $MODULE libpng ; then
  OPTS+=" -DPNG_PNG_INCLUDE_DIR=/usr/include/libpng16"
fi

if module_installed libglvnd ; then
  OTPS+=" -DOpenGL_GL_PREFERENCE=GLVND"
fi

OPTS+=" -DBUILD_WITH_DEBUG_INFO=OFF \
        -DBUILD_EXAMPLES=OFF \
        -DBUILD_TESTS=OFF \
        -DBUILD_PERF_TESTS=OFF \
        -DBUILD_SHARED_LIBS=ON \
        -DBUILD_WITH_DYNAMIC_IPP=ON \
        -DINSTALL_PYTHON_EXAMPLES=OFF \
        -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib-$VERSION/modules"

default_cmake_build &&

mkdir -p /usr/share/opencv &&
cp -r $SOURCE_DIRECTORY/samples /usr/share/opencv/ &&

# fix permissions
chmod 755 /usr/share/opencv/samples/*
