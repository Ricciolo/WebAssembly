rm -rf out
mkdir out
/usr/local/emsdk/upstream/emscripten/emcc -O3 base.cpp -s SIDE_MODULE=1 -o out/base.wasm
wasm2wat out/base.wasm -o out/base.wat