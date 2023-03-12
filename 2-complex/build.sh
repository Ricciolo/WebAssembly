rm -rf out
mkdir out
/usr/local/emsdk/upstream/emscripten/emcc complex.cpp -O3 -o out/complex.js --bind
wasm2wat out/complex.wasm -o out/complex.wat