rm -rf out
mkdir out
/usr/local/emsdk/upstream/emscripten/emcc js2wasm.cpp -o out/js2wasm.js --bind
# wasm2wat out/js2wasm.wasm -o out/js2wasm.wat