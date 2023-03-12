(module
  (import "logger" "print" (func $print (param i32 i32)))
  (memory (export "memory") 1)

  (func (export "program#add") (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add
  )

  (func (export "program#run")
    i32.const 100   ;; base pointer of string
    i32.const 13    ;; length of string
    call $print)

  (data (i32.const 100) "Hello, world!")
)