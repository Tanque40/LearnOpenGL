cd src/vendor/premake-core
make -f Bootstrap.mak macosx-clean
make -f Bootstrap.mak macosx
cd ../..
./vendor/premake-core/bin/release/premake5 gmake2