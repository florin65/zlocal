cd $MODULE &&

make all \
    PYTHON_VERSION='2.7' \
    CPPUNIT_INCL_DIR='' \
    HDSO='/usr' \
    PYTHON_INCL_DIR=/usr/include/python2.7 \
    PYTHON_LIB_DIR=/usr/lib \
    EXR_LIB_DIR=/usr/lib \
    ILMBASE_LIB_DIR=/usr/lib \
    NUMPY_INCL_DIR=/usr/lib/python2.7/site-packages/numpy/core/include/numpy \
    GLFW_INCL_DIR='' \
    BOOST_PYTHON_LIB_DIR=/usr/lib \
    BOOST_PYTHON_LIB=-lboost_python &&

prepare_install &&

make install \
    GLFW_INCL_DIR='' \
    DESTDIR=/usr
