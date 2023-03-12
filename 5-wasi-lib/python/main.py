from wasilib.exports.program import Valueobject
from wasilib import WasiLib, WasiLibImports
from wasmtime import Store

class Logger():
    def print(self, text: str):
        print(text)

def main():
    store = Store()
    lib = WasiLib(store, WasiLibImports(Logger()))
    lib.program().run(store)

    result = lib.program().add(store, Valueobject(1, 3))
    print("Result: " + str(result))

if __name__ == '__main__':
    main()