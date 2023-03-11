(module
  (type (;0;) (func))
  (type (;1;) (func (param f64 f64) (result f64)))
  (func $__wasm_call_ctors (type 0))
  (func $add (type 1) (param f64 f64) (result f64)
    (local i32 i32 i32 f64 f64 f64)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    f64.store offset=8
    local.get 4
    local.get 1
    f64.store
    local.get 4
    f64.load offset=8
    local.set 5
    local.get 4
    f64.load
    local.set 6
    local.get 5
    local.get 6
    f64.add
    local.set 7
    local.get 7
    return)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66560))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 66560))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "add" (func $add))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__global_base" (global 3))
  (export "__heap_base" (global 4))
  (export "__memory_base" (global 5))
  (export "__table_base" (global 6)))
