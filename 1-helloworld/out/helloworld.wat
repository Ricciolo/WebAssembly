(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func))
  (type (;5;) (func (result i32)))
  (type (;6;) (func (param i32 i64 i32) (result i64)))
  (type (;7;) (func (param i32 i32) (result i32)))
  (import "a" "a" (func (;0;) (type 2)))
  (import "a" "b" (func (;1;) (type 3)))
  (func (;2;) (type 4)
    nop)
  (func (;3;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 1024
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.const 1056
      i32.load
      local.tee 3
      if (result i32)  ;; label = @2
        local.get 3
      else
        call 4
        br_if 1 (;@1;)
        i32.const 1056
        i32.load
      end
      i32.const 1060
      i32.load
      local.tee 4
      i32.sub
      i32.gt_u
      if  ;; label = @2
        i32.const 1040
        i32.const 1024
        local.get 0
        i32.const 1076
        i32.load
        call_indirect (type 0)
        return
      end
      block  ;; label = @2
        i32.const 1120
        i32.load
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        local.get 0
        local.set 1
        loop  ;; label = @3
          local.get 1
          local.tee 3
          i32.eqz
          if  ;; label = @4
            i32.const 0
            local.set 3
            br 2 (;@2;)
          end
          local.get 3
          i32.const 1
          i32.sub
          local.tee 1
          i32.const 1024
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        i32.const 1040
        i32.const 1024
        local.get 3
        i32.const 1076
        i32.load
        call_indirect (type 0)
        local.tee 1
        local.get 3
        i32.lt_u
        br_if 1 (;@1;)
        local.get 3
        i32.const 1024
        i32.add
        local.set 2
        local.get 0
        local.get 3
        i32.sub
        local.set 0
        i32.const 1060
        i32.load
        local.set 4
      end
      local.get 4
      local.set 1
      block  ;; label = @2
        local.get 0
        i32.const 512
        i32.ge_u
        if  ;; label = @3
          local.get 1
          local.get 2
          local.get 0
          call 1
          br 1 (;@2;)
        end
        local.get 0
        local.get 1
        i32.add
        local.set 4
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.xor
          i32.const 3
          i32.and
          i32.eqz
          if  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 3
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.eqz
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 1
                local.get 2
                i32.load8_u
                i32.store8
                local.get 2
                i32.const 1
                i32.add
                local.set 2
                local.get 1
                i32.const 1
                i32.add
                local.tee 1
                i32.const 3
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                local.get 1
                local.get 4
                i32.lt_u
                br_if 0 (;@6;)
              end
            end
            block  ;; label = @5
              local.get 4
              i32.const -4
              i32.and
              local.tee 5
              i32.const 64
              i32.lt_u
              br_if 0 (;@5;)
              local.get 1
              local.get 5
              i32.const -64
              i32.add
              local.tee 6
              i32.gt_u
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 1
                local.get 2
                i32.load
                i32.store
                local.get 1
                local.get 2
                i32.load offset=4
                i32.store offset=4
                local.get 1
                local.get 2
                i32.load offset=8
                i32.store offset=8
                local.get 1
                local.get 2
                i32.load offset=12
                i32.store offset=12
                local.get 1
                local.get 2
                i32.load offset=16
                i32.store offset=16
                local.get 1
                local.get 2
                i32.load offset=20
                i32.store offset=20
                local.get 1
                local.get 2
                i32.load offset=24
                i32.store offset=24
                local.get 1
                local.get 2
                i32.load offset=28
                i32.store offset=28
                local.get 1
                local.get 2
                i32.load offset=32
                i32.store offset=32
                local.get 1
                local.get 2
                i32.load offset=36
                i32.store offset=36
                local.get 1
                local.get 2
                i32.load offset=40
                i32.store offset=40
                local.get 1
                local.get 2
                i32.load offset=44
                i32.store offset=44
                local.get 1
                local.get 2
                i32.load offset=48
                i32.store offset=48
                local.get 1
                local.get 2
                i32.load offset=52
                i32.store offset=52
                local.get 1
                local.get 2
                i32.load offset=56
                i32.store offset=56
                local.get 1
                local.get 2
                i32.load offset=60
                i32.store offset=60
                local.get 2
                i32.const -64
                i32.sub
                local.set 2
                local.get 1
                i32.const -64
                i32.sub
                local.tee 1
                local.get 6
                i32.le_u
                br_if 0 (;@6;)
              end
            end
            local.get 1
            local.get 5
            i32.ge_u
            br_if 1 (;@3;)
            loop  ;; label = @5
              local.get 1
              local.get 2
              i32.load
              i32.store
              local.get 2
              i32.const 4
              i32.add
              local.set 2
              local.get 1
              i32.const 4
              i32.add
              local.tee 1
              local.get 5
              i32.lt_u
              br_if 0 (;@5;)
            end
            br 1 (;@3;)
          end
          local.get 4
          i32.const 4
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          local.get 4
          i32.const 4
          i32.sub
          local.tee 5
          i32.gt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 1
            local.get 2
            i32.load8_u
            i32.store8
            local.get 1
            local.get 2
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 1
            local.get 2
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 1
            local.get 2
            i32.load8_u offset=3
            i32.store8 offset=3
            local.get 2
            i32.const 4
            i32.add
            local.set 2
            local.get 1
            i32.const 4
            i32.add
            local.tee 1
            local.get 5
            i32.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 1
        local.get 4
        i32.lt_u
        if  ;; label = @3
          loop  ;; label = @4
            local.get 1
            local.get 2
            i32.load8_u
            i32.store8
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            local.get 4
            i32.ne
            br_if 0 (;@4;)
          end
        end
      end
      i32.const 1060
      i32.const 1060
      i32.load
      local.get 0
      i32.add
      i32.store
      local.get 0
      local.get 3
      i32.add
      local.set 1
    end
    local.get 1)
  (func (;4;) (type 5) (result i32)
    (local i32)
    i32.const 1112
    i32.const 1112
    i32.load
    local.tee 0
    i32.const 1
    i32.sub
    local.get 0
    i32.or
    i32.store
    i32.const 1040
    i32.load
    local.tee 0
    i32.const 8
    i32.and
    if  ;; label = @1
      i32.const 1040
      local.get 0
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    i32.const 1044
    i64.const 0
    i64.store align=4
    i32.const 1068
    i32.const 1084
    i32.load
    local.tee 0
    i32.store
    i32.const 1060
    local.get 0
    i32.store
    i32.const 1056
    local.get 0
    i32.const 1088
    i32.load
    i32.add
    i32.store
    i32.const 0)
  (func (;5;) (type 6) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func (;6;) (type 1) (param i32) (result i32)
    i32.const 0)
  (func (;7;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.load offset=28
    local.tee 4
    i32.store offset=16
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 5
    local.get 4
    i32.sub
    local.tee 1
    i32.store offset=20
    local.get 1
    local.get 2
    i32.add
    local.set 5
    i32.const 2
    local.set 7
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=60
            local.get 3
            i32.const 16
            i32.add
            local.tee 1
            i32.const 2
            local.get 3
            i32.const 12
            i32.add
            call 0
            local.tee 4
            if (result i32)  ;; label = @5
              i32.const 2216
              local.get 4
              i32.store
              i32.const -1
            else
              i32.const 0
            end
            if  ;; label = @5
              local.get 1
              local.set 4
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 5
              local.get 3
              i32.load offset=12
              local.tee 6
              i32.eq
              br_if 2 (;@3;)
              local.get 6
              i32.const 0
              i32.lt_s
              if  ;; label = @6
                local.get 1
                local.set 4
                br 4 (;@2;)
              end
              local.get 1
              local.get 6
              local.get 1
              i32.load offset=4
              local.tee 8
              i32.gt_u
              local.tee 9
              i32.const 3
              i32.shl
              i32.add
              local.tee 4
              local.get 6
              local.get 8
              i32.const 0
              local.get 9
              select
              i32.sub
              local.tee 8
              local.get 4
              i32.load
              i32.add
              i32.store
              local.get 1
              i32.const 12
              i32.const 4
              local.get 9
              select
              i32.add
              local.tee 1
              local.get 1
              i32.load
              local.get 8
              i32.sub
              i32.store
              local.get 5
              local.get 6
              i32.sub
              local.set 5
              local.get 0
              i32.load offset=60
              local.get 4
              local.tee 1
              local.get 7
              local.get 9
              i32.sub
              local.tee 7
              local.get 3
              i32.const 12
              i32.add
              call 0
              local.tee 6
              if (result i32)  ;; label = @6
                i32.const 2216
                local.get 6
                i32.store
                i32.const -1
              else
                i32.const 0
              end
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 5
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load offset=44
        local.tee 1
        i32.store offset=28
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 0
        local.get 1
        local.get 0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      local.get 0
      i32.load
      i32.const 32
      i32.or
      i32.store
      i32.const 0
      local.get 7
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      drop
      local.get 2
      local.get 4
      i32.load offset=4
      i32.sub
    end
    local.set 0
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func (;8;) (type 7) (param i32 i32) (result i32)
    (local i32)
    i32.const 1116
    i32.load
    drop
    block  ;; label = @1
      i32.const 1024
      local.tee 0
      i32.const 3
      i32.and
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          i32.const 3
          i32.and
          br_if 0 (;@3;)
        end
      end
      loop  ;; label = @2
        local.get 0
        local.tee 1
        i32.const 4
        i32.add
        local.set 0
        local.get 1
        i32.load
        local.tee 2
        i32.const -1
        i32.xor
        local.get 2
        i32.const 16843009
        i32.sub
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      loop  ;; label = @2
        local.get 1
        local.tee 0
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.load8_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const -1
      i32.const 0
      block (result i32)  ;; label = @2
        local.get 0
        i32.const 1024
        i32.sub
        local.tee 0
        local.get 0
        block (result i32)  ;; label = @3
          i32.const 1116
          i32.load
          i32.const 0
          i32.lt_s
          if  ;; label = @4
            local.get 0
            call 3
            br 1 (;@3;)
          end
          local.get 0
          call 3
        end
        local.tee 1
        i32.eq
        br_if 0 (;@2;)
        drop
        local.get 1
      end
      local.get 0
      i32.ne
      select
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 1120
        i32.load
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        i32.const 1060
        i32.load
        local.tee 0
        i32.const 1056
        i32.load
        i32.eq
        br_if 0 (;@2;)
        i32.const 1060
        local.get 0
        i32.const 1
        i32.add
        i32.store
        local.get 0
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      global.get 0
      i32.const 16
      i32.sub
      local.tee 0
      global.set 0
      local.get 0
      i32.const 10
      i32.store8 offset=15
      block  ;; label = @2
        block  ;; label = @3
          i32.const 1056
          i32.load
          local.tee 1
          if (result i32)  ;; label = @4
            local.get 1
          else
            call 4
            br_if 2 (;@2;)
            i32.const 1056
            i32.load
          end
          i32.const 1060
          i32.load
          local.tee 1
          i32.eq
          br_if 0 (;@3;)
          i32.const 1120
          i32.load
          i32.const 10
          i32.eq
          br_if 0 (;@3;)
          i32.const 1060
          local.get 1
          i32.const 1
          i32.add
          i32.store
          local.get 1
          i32.const 10
          i32.store8
          br 1 (;@2;)
        end
        i32.const 1040
        local.get 0
        i32.const 15
        i32.add
        i32.const 1
        i32.const 1076
        i32.load
        call_indirect (type 0)
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.load8_u offset=15
        drop
      end
      local.get 0
      i32.const 16
      i32.add
      global.set 0
    end
    i32.const 0)
  (table (;0;) 4 4 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 67760))
  (export "c" (memory 0))
  (export "d" (func 2))
  (export "e" (func 8))
  (export "f" (table 0))
  (elem (;0;) (i32.const 1) func 6 7 5)
  (data (;0;) (i32.const 1024) "Hello World")
  (data (;1;) (i32.const 1040) "\05")
  (data (;2;) (i32.const 1052) "\01")
  (data (;3;) (i32.const 1076) "\02\00\00\00\03\00\00\00\a8\04\00\00\00\04")
  (data (;4;) (i32.const 1100) "\01")
  (data (;5;) (i32.const 1116) "\ff\ff\ff\ff\0a"))
