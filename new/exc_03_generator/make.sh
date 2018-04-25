rm -rf /build/*
cd build
cmake ..
make 
./tests/generatorTests
