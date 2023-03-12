from .exports import program
from .imports import WasiLibImports
from .intrinsics import _decode_utf8
import os
import wasmtime

class WasiLib:
    
    def __init__(self, store: wasmtime.Store, import_object: WasiLibImports) -> None:
        path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'wasi-lib.core1.wasm')
        module = wasmtime.Module.from_file(store.engine, path)
        instance0 = wasmtime.Instance(store, module, []).exports(store)
        path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'wasi-lib.core0.wasm')
        module = wasmtime.Module.from_file(store.engine, path)
        instance1 = wasmtime.Instance(store, module, [
            instance0["0"],
        ]).exports(store)
        core_memory0 = instance1["memory"]
        assert(isinstance(core_memory0, wasmtime.Memory))
        self._core_memory0 = core_memory0
        def lowering0_callee(caller: wasmtime.Caller, arg0: int, arg1: int) -> None:
            ptr = arg0
            len0 = arg1
            list = _decode_utf8(self._core_memory0, caller, ptr, len0)
            import_object.logger.print(list)
        lowering0_ty = wasmtime.FuncType([wasmtime.ValType.i32(), wasmtime.ValType.i32(), ], [])
        lowering0 = wasmtime.Func(store, lowering0_ty, lowering0_callee, access_caller = True)
        path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'wasi-lib.core2.wasm')
        module = wasmtime.Module.from_file(store.engine, path)
        instance2 = wasmtime.Instance(store, module, [
            lowering0,
            instance0["$imports"],
        ]).exports(store)
        lift_callee0 = instance1["program#add"]
        assert(isinstance(lift_callee0, wasmtime.Func))
        self.lift_callee0 = lift_callee0
        lift_callee1 = instance1["program#run"]
        assert(isinstance(lift_callee1, wasmtime.Func))
        self.lift_callee1 = lift_callee1
    def program(self) -> program.Program:
        return program.Program(self)
