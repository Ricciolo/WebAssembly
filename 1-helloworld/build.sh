rm -rf out
mkdir out
/usr/local/emsdk/upstream/emscripten/emcc helloworld.c -o out/helloworld.js
wasm2wat out/helloworld.wasm -o out/helloworld.wat