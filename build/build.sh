INCLUDE_PATH="${PREFIX}/include"
LIBRARY_PATH="${PREFIX}/lib"
cp antlr.jar $PREFIX/lib/antlr.jar
cmake -DBUILD_TESTS=OFF -DCMAKE_INSTALL_PREFIX=$PREFIX $SRC_DIR srcML-src
make
cp bin/srcml $PREFIX/bin/
cp bin/libsrcml* $PREFIX/lib/
