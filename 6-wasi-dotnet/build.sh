rm -rf out
dotnet build -c Release -o out
# wasm2wat out/wasi-dotnet.wasm -o out/wasi-dotnet.wat --enable-all