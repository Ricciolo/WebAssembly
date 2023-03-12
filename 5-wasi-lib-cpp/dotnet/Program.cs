using System.Runtime.InteropServices;
using Wasmtime;

using var engine = new Engine();

using var module = Module.FromFile(engine, "../out/wasi-lib.wasm");

using var linker = new Linker(engine);
using var store = new Store(engine);

var instance = linker.Instantiate(store, module);
var add = instance.GetFunction<double, double, double>("add")!;

var result = add(3.2, 5.8);
Console.WriteLine($"Result is {result}");