wget http://www.antlr3.org/download/antlr-3.5.2-runtime.jar
mv antlr-3.5.2-runtime.jar $PREFIX/lib/antlr.jar
cmake -DBUILD_TESTS=OFF -DCMAKE_INSTALL_PREFIX=$PREFIX $SRC_DIR -DCMAKE_INSTALL_LIBDIR=lib srcML-src
make install
