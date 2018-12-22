INCLUDE_PATH="${PREFIX}/include"
LIBRARY_PATH="${PREFIX}/lib"
cp antlr.jar $PREFIX/lib/antlr.jar
cmake -G ninja -DBUILD_TESTS=OFF -DCMAKE_INSTALL_PREFIX=$PREFIX $SRC_DIR srcML-src
ninja
mv $PREFIX/usr/bin/* $PREFIX/bin/
mv $PREFIX/usr/lib/* $PREFIX/lib/
