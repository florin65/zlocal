if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

OPTS+=" -D build_doc=0 \
        -D PYTHON_EXECUTABLE:FILE=/usr/bin/python2"

default_cmake_build
