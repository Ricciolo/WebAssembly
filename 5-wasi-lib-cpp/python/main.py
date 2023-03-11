from wasmtime import Store, Module, Instance

store = Store()
module = Module.from_file(store.engine, '../out/wasi-lib.wasm')
instance = Instance(store, module, [])
add = instance.exports(store)['add']

result = add(store, 4.6, 5.4)

print("Result is %d" % result)