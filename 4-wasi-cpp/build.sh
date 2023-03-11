rm -rf out
mkdir out
~/.wasi-sdk/wasi-sdk-16.0/bin/clang wasi.cpp -o out/wasi.wasm
wasm2wat out/wasi.wasm -o out/wasi.wat --enable-all