rm -rf out
mkdir out
~/.wasi-sdk/wasi-sdk-16.0/bin/clang wasi-lib.cpp -o out/wasi-lib.wasm -Wl,--no-entry -nostdlib -Wl,--export-all
wasm2wat out/wasi-lib.wasm -o out/wasi-lib.wat --enable-all