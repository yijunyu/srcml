cp antlr.jar $PREFIX/lib/antlr.jar
sed -i -e 's/java antlr/java org.antlr/g' $PREFIX/bin/antlr
cmake -DBUILD_TESTS=OFF -DCMAKE_INSTALL_PREFIX=$PREFIX $SRC_DIR -DCMAKE_INSTALL_LIBDIR=lib srcML-src
make install
