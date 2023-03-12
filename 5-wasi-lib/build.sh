rm -rf out
mkdir out
~/wasm-tools-1.0.27-x86_64-linux/wasm-tools component embed wasi-lib.wit wasi-lib.wat -o out/wasi-lib.wasm
~/wasm-tools-1.0.27-x86_64-linux/wasm-tools component new out/wasi-lib.wasm -o out/wasi-lib.wasm