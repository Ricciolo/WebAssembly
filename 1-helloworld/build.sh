rm -rf out
mkdir out
/usr/local/emsdk/upstream/emscripten/emcc -O3 helloworld.cpp -o out/helloworld.js
wasm2wat out/helloworld.wasm -o out/helloworld.wat