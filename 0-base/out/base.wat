(module
  (type (;0;) (func (param f32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param f32) (result i32)))
  (import "env" "javascriptAlert" (func (;0;) (type 0)))
  (func (;1;) (type 1)
    nop)
  (func (;2;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add)
  (func (;3;) (type 3) (param f32) (result i32)
    local.get 0
    call 0
    i32.const 0)
  (export "__wasm_call_ctors" (func 1))
  (export "__wasm_apply_data_relocs" (func 1))
  (export "add" (func 2))
  (export "callJavascript" (func 3)))
