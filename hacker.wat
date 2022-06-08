(module
  (type $t0 (func))
  (type $t1 (func (param i32 i32) (result i32)))
  (type $t2 (func (result i32)))
  (type $t3 (func (param i32)))
  (type $t4 (func (param i32 i32)))
  (type $t5 (func (param i32) (result i32)))
  (type $t6 (func (param i32 i32 i32) (result i32)))
  (type $t7 (func (param i32 i64)))
  (type $t8 (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type $t9 (func (param i32 i32 i32 i32)))
  (type $t10 (func (param i32 i32 i32 i32) (result i32)))
  (type $t11 (func (param i32 i32 i64 i32 i32) (result i32)))
  (type $t12 (func (result i64)))
  (type $t13 (func (param i32 i32 i32)))
  (type $t14 (func (param i64) (result i32)))
  (type $t15 (func (param i32 i32) (result i64)))
  (import "env" "bigIntSetInt64" (func $env.bigIntSetInt64 (type $t7)))
  (import "env" "mBufferNew" (func $env.mBufferNew (type $t2)))
  (import "env" "mBufferAppend" (func $env.mBufferAppend (type $t1)))
  (import "env" "managedCaller" (func $env.managedCaller (type $t3)))
  (import "env" "managedSCAddress" (func $env.managedSCAddress (type $t3)))
  (import "env" "mBufferAppendBytes" (func $env.mBufferAppendBytes (type $t6)))
  (import "env" "managedSignalError" (func $env.managedSignalError (type $t3)))
  (import "env" "getNumESDTTransfers" (func $env.getNumESDTTransfers (type $t2)))
  (import "env" "signalError" (func $env.signalError (type $t4)))
  (import "env" "mBufferGetArgument" (func $env.mBufferGetArgument (type $t1)))
  (import "env" "mBufferGetLength" (func $env.mBufferGetLength (type $t5)))
  (import "env" "getNumArguments" (func $env.getNumArguments (type $t2)))
  (import "env" "mBufferGetByteSlice" (func $env.mBufferGetByteSlice (type $t10)))
  (import "env" "mBufferSetBytes" (func $env.mBufferSetBytes (type $t6)))
  (import "env" "mBufferFromBigIntUnsigned" (func $env.mBufferFromBigIntUnsigned (type $t1)))
  (import "env" "checkNoPayment" (func $env.checkNoPayment (type $t0)))
  (import "env" "mBufferStorageStore" (func $env.mBufferStorageStore (type $t1)))
  (import "env" "managedOwnerAddress" (func $env.managedOwnerAddress (type $t3)))
  (import "env" "mBufferEq" (func $env.mBufferEq (type $t1)))
  (import "env" "mBufferGetBytes" (func $env.mBufferGetBytes (type $t1)))
  (import "env" "bigIntGetExternalBalance" (func $env.bigIntGetExternalBalance (type $t4)))
  (import "env" "managedTransferValueExecute" (func $env.managedTransferValueExecute (type $t11)))
  (import "env" "managedGetMultiESDTCallValue" (func $env.managedGetMultiESDTCallValue (type $t3)))
  (import "env" "bigIntGetCallValue" (func $env.bigIntGetCallValue (type $t3)))
  (import "env" "getGasLeft" (func $env.getGasLeft (type $t12)))
  (import "env" "managedExecuteOnDestContext" (func $env.managedExecuteOnDestContext (type $t8)))
  (import "env" "cleanReturnData" (func $env.cleanReturnData (type $t0)))
  (import "env" "bigIntMul" (func $env.bigIntMul (type $t13)))
  (import "env" "mBufferStorageLoad" (func $env.mBufferStorageLoad (type $t1)))
  (import "env" "managedExecuteOnDestContextByCaller" (func $env.managedExecuteOnDestContextByCaller (type $t8)))
  (func $f30 (type $t14) (param $p0 i64) (result i32)
    (local $l1 i32)
    (call $env.bigIntSetInt64
      (local.tee $l1
        (call $f31))
      (local.get $p0))
    (local.get $l1))
  (func $f31 (type $t2) (result i32)
    (local $l0 i32)
    (i32.store
      (i32.const 1048952)
      (local.tee $l0
        (i32.sub
          (i32.load
            (i32.const 1048952))
          (i32.const 1))))
    (local.get $l0))
  (func $f32 (type $t5) (param $p0 i32) (result i32)
    (local $l1 i32)
    (drop
      (call $env.mBufferAppend
        (local.tee $l1
          (call $env.mBufferNew))
        (local.get $p0)))
    (local.get $l1))
  (func $f33 (type $t2) (result i32)
    (local $l0 i32)
    (call $env.managedCaller
      (local.tee $l0
        (call $f31)))
    (local.get $l0))
  (func $f34 (type $t2) (result i32)
    (local $l0 i32)
    (call $env.managedSCAddress
      (local.tee $l0
        (call $f31)))
    (local.get $l0))
  (func $f35 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (drop
      (call $env.mBufferSetBytes
        (local.tee $l2
          (call $f31))
        (local.get $p0)
        (local.get $p1)))
    (local.get $l2))
  (func $f36 (type $t0)
    (if $I0
      (i32.eqz
        (call $env.getNumESDTTransfers))
      (then
        (return)))
    (call $env.signalError
      (i32.const 1048697)
      (i32.const 37))
    (unreachable))
  (func $f37 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (drop
      (call $env.mBufferGetArgument
        (i32.const 0)
        (local.tee $l2
          (call $f31))))
    (if $I0
      (i32.ne
        (call $env.mBufferGetLength
          (local.get $l2))
        (i32.const 32))
      (then
        (drop
          (call $env.mBufferAppendBytes
            (local.tee $l2
              (call $f35
                (i32.const 1048671)
                (i32.const 23)))
            (local.get $p0)
            (local.get $p1)))
        (drop
          (call $env.mBufferAppendBytes
            (local.get $l2)
            (i32.const 1048694)
            (i32.const 3)))
        (drop
          (call $env.mBufferAppendBytes
            (local.get $l2)
            (i32.const 1048857)
            (i32.const 16)))
        (call $env.managedSignalError
          (local.get $l2))
        (unreachable)))
    (local.get $l2))
  (func $f38 (type $t3) (param $p0 i32)
    (if $I0
      (i32.eq
        (call $env.getNumArguments)
        (local.get $p0))
      (then
        (return)))
    (call $env.signalError
      (i32.const 1048734)
      (i32.const 25))
    (unreachable))
  (func $f39 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l2)
      (call $f40))
    (call $f41
      (local.get $p1)
      (i32.add
        (local.get $l2)
        (i32.const 12)))
    (call $f42
      (local.get $p0)
      (i32.load offset=12
        (local.get $l2)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f40 (type $t2) (result i32)
    (local $l0 i32)
    (drop
      (call $env.mBufferSetBytes
        (local.tee $l0
          (call $f31))
        (i32.const 1048936)
        (i32.const 0)))
    (local.get $l0))
  (func $f41 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (drop
      (call $env.mBufferFromBigIntUnsigned
        (local.tee $l2
          (call $f31))
        (local.get $p0)))
    (i32.store
      (local.get $p1)
      (local.get $l2)))
  (func $f42 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l2)
      (i32.or
        (i32.or
          (i32.and
            (i32.shl
              (local.get $p1)
              (i32.const 8))
            (i32.const 16711680))
          (i32.shl
            (local.get $p1)
            (i32.const 24)))
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 8))
            (i32.const 65280))
          (i32.shr_u
            (local.get $p1)
            (i32.const 24)))))
    (drop
      (call $env.mBufferAppendBytes
        (local.get $p0)
        (i32.add
          (local.get $l2)
          (i32.const 12))
        (i32.const 4)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f43 (type $t4) (param $p0 i32) (param $p1 i32)
    (drop
      (call $f40))
    (call $f42
      (local.get $p0)
      (call $f32
        (local.get $p1))))
  (func $f44 (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (i32.ne
      (call $env.mBufferGetByteSlice
        (local.get $p0)
        (local.get $p1)
        (i32.const 16)
        (local.get $p2))
      (i32.const 0)))
  (func $f45 (type $t5) (param $p0 i32) (result i32)
    (i32.eqz
      (call $env.mBufferGetLength
        (local.get $p0))))
  (func $f46 (type $t2) (result i32)
    (local $l0 i32)
    (call $env.bigIntSetInt64
      (local.tee $l0
        (call $f31))
      (i64.const 0))
    (local.get $l0))
  (func $f47 (type $t5) (param $p0 i32) (result i32)
    (i32.shr_u
      (call $env.mBufferGetLength
        (local.get $p0))
      (i32.const 4)))
  (func $f48 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64) (local $l7 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i64.store
      (i32.add
        (local.get $l2)
        (i32.const 16))
      (i64.const 0))
    (i64.store offset=8
      (local.get $l2)
      (i64.const 0))
    (local.set $p1
      (call $f44
        (local.get $p1)
        (i32.const 0)
        (local.tee $l3
          (i32.add
            (local.get $l2)
            (i32.const 8)))))
    (i32.store offset=28
      (local.get $l2)
      (i32.const 0))
    (local.set $l5
      (call $f49
        (local.get $l3)
        (local.tee $l4
          (i32.add
            (local.get $l2)
            (i32.const 28)))))
    (local.set $l7
      (call $f50
        (local.get $l3)
        (local.get $l4)))
    (local.set $l3
      (call $f49
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.add
          (local.get $l2)
          (i32.const 28))))
    (i64.store
      (local.get $p0)
      (if $I0 (result i64)
        (local.get $p1)
        (then
          (i64.const 0))
        (else
          (i64.store offset=8
            (local.get $p0)
            (local.get $l7))
          (i32.store
            (i32.add
              (local.get $p0)
              (i32.const 20))
            (local.get $l3))
          (i32.store
            (i32.add
              (local.get $p0)
              (i32.const 16))
            (local.get $l5))
          (i64.const 1))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32))))
  (func $f49 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l2)
      (i32.const 0))
    (call $f51
      (local.get $l2)
      (local.get $p0)
      (local.tee $p0
        (i32.load
          (local.get $p1)))
      (local.tee $p0
        (i32.add
          (local.get $p0)
          (i32.const 4))))
    (call $f52
      (i32.add
        (local.get $l2)
        (i32.const 12))
      (i32.const 4)
      (i32.load
        (local.get $l2))
      (i32.load offset=4
        (local.get $l2)))
    (i32.store
      (local.get $p1)
      (local.get $p0))
    (local.set $p0
      (i32.load offset=12
        (local.get $l2)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (i32.or
      (i32.or
        (i32.and
          (i32.shl
            (local.get $p0)
            (i32.const 8))
          (i32.const 16711680))
        (i32.shl
          (local.get $p0)
          (i32.const 24)))
      (i32.or
        (i32.and
          (i32.shr_u
            (local.get $p0)
            (i32.const 8))
          (i32.const 65280))
        (i32.shr_u
          (local.get $p0)
          (i32.const 24)))))
  (func $f50 (type $t15) (param $p0 i32) (param $p1 i32) (result i64)
    (local $l2 i64) (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i64.store offset=8
      (local.get $l3)
      (i64.const 0))
    (call $f51
      (local.get $l3)
      (local.get $p0)
      (local.tee $p0
        (i32.load
          (local.get $p1)))
      (local.tee $p0
        (i32.add
          (local.get $p0)
          (i32.const 8))))
    (call $f52
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (i32.const 8)
      (i32.load
        (local.get $l3))
      (i32.load offset=4
        (local.get $l3)))
    (i32.store
      (local.get $p1)
      (local.get $p0))
    (local.set $l2
      (i64.load offset=8
        (local.get $l3)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16)))
    (i64.or
      (i64.or
        (i64.or
          (i64.and
            (i64.shl
              (local.get $l2)
              (i64.const 40))
            (i64.const 71776119061217280))
          (i64.shl
            (local.get $l2)
            (i64.const 56)))
        (i64.or
          (i64.and
            (i64.shl
              (local.get $l2)
              (i64.const 24))
            (i64.const 280375465082880))
          (i64.and
            (i64.shl
              (local.get $l2)
              (i64.const 8))
            (i64.const 1095216660480))))
      (i64.or
        (i64.or
          (i64.and
            (i64.shr_u
              (local.get $l2)
              (i64.const 8))
            (i64.const 4278190080))
          (i64.and
            (i64.shr_u
              (local.get $l2)
              (i64.const 24))
            (i64.const 16711680)))
        (i64.or
          (i64.and
            (i64.shr_u
              (local.get $l2)
              (i64.const 40))
            (i64.const 65280))
          (i64.shr_u
            (local.get $l2)
            (i64.const 56))))))
  (func $f51 (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (block $B0
      (if $I1
        (i32.le_u
          (local.get $p2)
          (local.get $p3))
        (then
          (br_if $B0
            (i32.gt_u
              (local.get $p3)
              (i32.const 16)))
          (i32.store offset=4
            (local.get $p0)
            (i32.sub
              (local.get $p3)
              (local.get $p2)))
          (i32.store
            (local.get $p0)
            (i32.add
              (local.get $p1)
              (local.get $p2)))
          (return)))
      (call $f54)
      (unreachable))
    (call $f54)
    (unreachable))
  (func $f52 (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (if $I0
      (i32.eq
        (local.get $p1)
        (local.get $p3))
      (then
        (if $I1
          (i32.gt_u
            (local.tee $p3
              (local.get $p1))
            (i32.const 15))
          (then
            (local.set $l5
              (i32.add
                (local.get $p0)
                (local.tee $l4
                  (i32.and
                    (i32.sub
                      (i32.const 0)
                      (local.get $p0))
                    (i32.const 3)))))
            (if $I2
              (local.get $l4)
              (then
                (local.set $p1
                  (local.get $p2))
                (loop $L3
                  (i32.store8
                    (local.get $p0)
                    (i32.load8_u
                      (local.get $p1)))
                  (local.set $p1
                    (i32.add
                      (local.get $p1)
                      (i32.const 1)))
                  (br_if $L3
                    (i32.lt_u
                      (local.tee $p0
                        (i32.add
                          (local.get $p0)
                          (i32.const 1)))
                      (local.get $l5))))))
            (local.set $p0
              (i32.add
                (local.get $l5)
                (local.tee $l6
                  (i32.and
                    (local.tee $p3
                      (i32.sub
                        (local.get $p3)
                        (local.get $l4)))
                    (i32.const -4)))))
            (block $B4
              (if $I5
                (i32.and
                  (local.tee $l4
                    (i32.add
                      (local.get $p2)
                      (local.get $l4)))
                  (i32.const 3))
                (then
                  (br_if $B4
                    (i32.le_s
                      (local.get $l6)
                      (i32.const 0)))
                  (local.set $l7
                    (i32.and
                      (local.tee $p1
                        (i32.shl
                          (local.get $l4)
                          (i32.const 3)))
                      (i32.const 24)))
                  (local.set $p2
                    (i32.add
                      (local.tee $l8
                        (i32.and
                          (local.get $l4)
                          (i32.const -4)))
                      (i32.const 4)))
                  (local.set $l9
                    (i32.and
                      (i32.sub
                        (i32.const 0)
                        (local.get $p1))
                      (i32.const 24)))
                  (local.set $p1
                    (i32.load
                      (local.get $l8)))
                  (loop $L6
                    (i32.store
                      (local.get $l5)
                      (i32.or
                        (i32.shr_u
                          (local.get $p1)
                          (local.get $l7))
                        (i32.shl
                          (local.tee $p1
                            (i32.load
                              (local.get $p2)))
                          (local.get $l9))))
                    (local.set $p2
                      (i32.add
                        (local.get $p2)
                        (i32.const 4)))
                    (br_if $L6
                      (i32.lt_u
                        (local.tee $l5
                          (i32.add
                            (local.get $l5)
                            (i32.const 4)))
                        (local.get $p0))))
                  (br $B4)))
              (br_if $B4
                (i32.le_s
                  (local.get $l6)
                  (i32.const 0)))
              (local.set $p2
                (local.get $l4))
              (loop $L7
                (i32.store
                  (local.get $l5)
                  (i32.load
                    (local.get $p2)))
                (local.set $p2
                  (i32.add
                    (local.get $p2)
                    (i32.const 4)))
                (br_if $L7
                  (i32.lt_u
                    (local.tee $l5
                      (i32.add
                        (local.get $l5)
                        (i32.const 4)))
                    (local.get $p0)))))
            (local.set $p3
              (i32.and
                (local.get $p3)
                (i32.const 3)))
            (local.set $p2
              (i32.add
                (local.get $l4)
                (local.get $l6)))))
        (if $I8
          (local.get $p3)
          (then
            (local.set $p1
              (i32.add
                (local.get $p0)
                (local.get $p3)))
            (loop $L9
              (i32.store8
                (local.get $p0)
                (i32.load8_u
                  (local.get $p2)))
              (local.set $p2
                (i32.add
                  (local.get $p2)
                  (i32.const 1)))
              (br_if $L9
                (i32.lt_u
                  (local.tee $p0
                    (i32.add
                      (local.get $p0)
                      (i32.const 1)))
                  (local.get $p1))))))
        (return)))
    (call $f54)
    (unreachable))
  (func $f53 (type $t7) (param $p0 i32) (param $p1 i64)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i64.store offset=8
      (local.get $l3)
      (i64.or
        (i64.or
          (i64.or
            (i64.and
              (i64.shl
                (local.get $p1)
                (i64.const 40))
              (i64.const 71776119061217280))
            (i64.shl
              (local.get $p1)
              (i64.const 56)))
          (i64.or
            (i64.and
              (i64.shl
                (local.get $p1)
                (i64.const 24))
              (i64.const 280375465082880))
            (i64.and
              (i64.shl
                (local.get $p1)
                (i64.const 8))
              (i64.const 1095216660480))))
        (i64.or
          (i64.or
            (i64.and
              (i64.shr_u
                (local.get $p1)
                (i64.const 8))
              (i64.const 4278190080))
            (i64.and
              (i64.shr_u
                (local.get $p1)
                (i64.const 24))
              (i64.const 16711680)))
          (i64.or
            (i64.and
              (i64.shr_u
                (local.get $p1)
                (i64.const 40))
              (i64.const 65280))
            (i64.shr_u
              (local.get $p1)
              (i64.const 56))))))
    (block $B0
      (if $I1
        (i64.eqz
          (local.get $p1))
        (then
          (local.set $l4
            (i32.const 1048936))
          (br $B0)))
      (loop $L2
        (block $B3
          (block $B4
            (if $I5
              (i32.ne
                (local.get $l2)
                (i32.const 8))
              (then
                (br_if $B3
                  (i32.eqz
                    (i32.load8_u
                      (local.tee $l4
                        (i32.add
                          (i32.add
                            (local.get $l3)
                            (i32.const 8))
                          (local.get $l2))))))
                (br_if $B4
                  (i32.ge_u
                    (local.get $l2)
                    (i32.const 9)))
                (local.set $l2
                  (i32.sub
                    (i32.const 8)
                    (local.get $l2)))
                (br $B0)))
            (call $f62)
            (unreachable))
          (call $f54)
          (unreachable))
        (local.set $l2
          (i32.add
            (local.get $l2)
            (i32.const 1)))
        (br $L2))
      (unreachable))
    (drop
      (call $env.mBufferSetBytes
        (local.get $p0)
        (local.get $l4)
        (local.get $l2)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $f54 (type $t0)
    (call $f62)
    (unreachable))
  (func $f55 (type $t2) (result i32)
    (call $f35
      (i32.const 1048873)
      (i32.const 7)))
  (func $init (export "init") (type $t0)
    (local $l0 i32)
    (call $env.checkNoPayment)
    (call $f38
      (i32.const 1))
    (local.set $l0
      (call $f37
        (i32.const 1048873)
        (i32.const 7)))
    (drop
      (call $env.mBufferStorageStore
        (call $f55)
        (local.get $l0))))
  (func $withdraw (export "withdraw") (type $t0)
    (local $l0 i32) (local $l1 i32)
    (call $env.checkNoPayment)
    (call $env.managedOwnerAddress
      (local.tee $l0
        (call $f31)))
    (if $I0
      (i32.le_s
        (call $env.mBufferEq
          (local.get $l0)
          (call $f33))
        (i32.const 0))
      (then
        (call $env.signalError
          (i32.const 1048601)
          (i32.const 36))
        (unreachable)))
    (call $f38
      (i32.const 0))
    (call $f34)
    (local.set $l0
      (call $f31))
    (i32.const 1048961)
    (drop
      (call $env.mBufferGetBytes))
    (call $env.bigIntGetExternalBalance
      (i32.const 1048961)
      (local.get $l0))
    (drop
      (call $env.managedTransferValueExecute
        (call $f33)
        (local.get $l0)
        (i64.const 0)
        (call $f35
          (i32.const 1048936)
          (i32.const 0))
        (call $f40))))
  (func $wrapEgld (export "wrapEgld") (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i64)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (call $f36)
    (local.set $l1
      (i32.const -21))
    (block $B0
      (if $I1
        (local.tee $l5
          (i32.load8_u
            (i32.const 1048960)))
        (then
          (local.set $l1
            (select
              (i32.const -21)
              (i32.const 2147483647)
              (local.get $l5)))
          (br $B0)))
      (i32.store8
        (i32.const 1048960)
        (i32.const 1))
      (call $env.managedGetMultiESDTCallValue
        (i32.const -21)))
    (block $B2
      (block $B3
        (block $B4
          (block $B5
            (block $B6
              (block $B7
                (block $B8
                  (br_table $B7 $B6 $B8
                    (call $f47
                      (local.get $l1))))
                (call $env.signalError
                  (i32.const 1048637)
                  (i32.const 34))
                (unreachable))
              (local.set $l3
                (i32.const -11))
              (if $I9
                (local.tee $l5
                  (i32.load8_u
                    (i32.const 1048956)))
                (then
                  (local.set $l3
                    (select
                      (i32.const -11)
                      (i32.const 2147483647)
                      (local.get $l5)))
                  (br $B5)))
              (i32.store8
                (i32.const 1048956)
                (i32.const 1))
              (call $env.bigIntGetCallValue
                (i32.const -11))
              (br $B5))
            (call $f48
              (i32.add
                (local.get $l0)
                (i32.const 8))
              (local.get $l1))
            (br_if $B4
              (i64.eqz
                (i64.load offset=8
                  (local.get $l0))))
            (local.set $l3
              (i32.load
                (i32.add
                  (local.get $l0)
                  (i32.const 28)))))
          (call $f38
            (i32.const 1))
          (local.set $l2
            (call $f37
              (i32.const 1048888)
              (i32.const 14)))
          (local.set $l1
            (call $f35
              (i32.const 1048915)
              (i32.const 18)))
          (if $I10
            (i32.ne
              (local.get $l2)
              (i32.const 2147483646))
            (then
              (local.set $l7
                (call $f40))
              (local.set $l6
                (call $f35
                  (i32.const 1048880)
                  (i32.const 8)))
              (local.set $l5
                (call $f40))
              (drop
                (call $f46))
              (drop
                (call $f40))
              (call $f42
                (local.get $l5)
                (call $f32
                  (local.get $l1)))
              (drop
                (call $env.mBufferSetBytes
                  (local.get $l7)
                  (i32.const 1048936)
                  (i32.const 0)))
              (block $B11
                (br_table $B2 $B3 $B11
                  (call $f47
                    (local.get $l7))))
              (drop
                (call $f40))
              (local.set $l4
                (call $f40))
              (drop
                (call $f40))
              (call $f42
                (local.get $l4)
                (call $f32
                  (local.get $l2)))
              (local.set $l2
                (call $f47
                  (local.get $l7)))
              (call $f53
                (local.tee $l1
                  (call $f40))
                (i64.extend_i32_u
                  (local.get $l2)))
              (call $f42
                (local.get $l4)
                (local.get $l1))
              (local.set $l9
                (call $env.mBufferGetLength
                  (local.get $l7)))
              (local.set $l10
                (i32.add
                  (local.get $l0)
                  (i32.const 16)))
              (local.set $l2
                (i32.const 0))
              (loop $L12
                (if $I13
                  (i32.lt_u
                    (local.get $l9)
                    (local.tee $l1
                      (i32.add
                        (local.get $l2)
                        (i32.const 16))))
                  (then
                    (if $I14
                      (i32.eqz
                        (call $f45
                          (local.get $l6)))
                      (then
                        (drop
                          (call $f40))
                        (call $f42
                          (local.get $l4)
                          (call $f32
                            (local.get $l6)))))
                    (local.set $l2
                      (call $f34))
                    (local.set $l3
                      (call $f46))
                    (local.set $l6
                      (call $f35
                        (i32.const 1048759)
                        (i32.const 20)))
                    (drop
                      (call $env.mBufferAppend
                        (local.get $l4)
                        (local.get $l5)))
                    (local.set $l5
                      (local.get $l4))
                    (br $B2))
                  (else
                    (i64.store
                      (local.get $l10)
                      (i64.const 0))
                    (i64.store offset=8
                      (local.get $l0)
                      (i64.const 0))
                    (drop
                      (call $f44
                        (local.get $l7)
                        (local.get $l2)
                        (local.tee $l8
                          (i32.add
                            (local.get $l0)
                            (i32.const 8)))))
                    (i32.store offset=4
                      (local.get $l0)
                      (i32.const 0))
                    (local.set $l2
                      (call $f49
                        (local.get $l8)
                        (local.tee $l3
                          (i32.add
                            (local.get $l0)
                            (i32.const 4)))))
                    (local.set $l11
                      (call $f50
                        (local.get $l8)
                        (local.get $l3)))
                    (call $f49
                      (i32.add
                        (local.get $l0)
                        (i32.const 8))
                      (i32.add
                        (local.get $l0)
                        (i32.const 4)))
                    (drop
                      (call $f40))
                    (call $f42
                      (local.get $l4)
                      (call $f32
                        (local.get $l2)))
                    (call $f53
                      (local.tee $l2
                        (call $f40))
                      (local.get $l11))
                    (call $f42
                      (local.get $l4)
                      (local.get $l2))
                    (i32.store offset=8
                      (local.get $l0)
                      (call $f40))
                    (local.get $l8)
                    (call $f41)
                    (call $f42
                      (local.get $l4)
                      (i32.load offset=8
                        (local.get $l0)))
                    (local.set $l2
                      (local.get $l1))
                    (br $L12)))
                (unreachable))
              (unreachable)))
          (call $env.signalError
            (i32.const 1048576)
            (i32.const 25))
          (unreachable))
        (call $env.signalError
          (i32.const 1048806)
          (i32.const 29))
        (unreachable))
      (call $f48
        (i32.add
          (local.get $l0)
          (i32.const 8))
        (local.get $l7))
      (br_if $B2
        (i64.ne
          (i64.load offset=8
            (local.get $l0))
          (i64.const 1)))
      (local.set $l3
        (i32.load
          (i32.add
            (local.get $l0)
            (i32.const 28))))
      (local.set $l4
        (i32.load
          (i32.add
            (local.get $l0)
            (i32.const 24))))
      (local.set $l11
        (i64.load offset=16
          (local.get $l0)))
      (drop
        (call $f40))
      (call $f43
        (local.tee $l1
          (call $f40))
        (local.get $l4))
      (local.set $l6
        (block $B15 (result i32)
          (block $B16
            (block $B17
              (block $B18
                (if $I19
                  (i64.eqz
                    (local.get $l11))
                  (then
                    (call $f39
                      (local.get $l1)
                      (local.get $l3))
                    (br_if $B18
                      (i32.eqz
                        (call $f45
                          (local.get $l6))))
                    (br $B16)))
                (call $f53
                  (local.tee $l4
                    (call $f40))
                  (local.get $l11))
                (call $f42
                  (local.get $l1)
                  (local.get $l4))
                (call $f39
                  (local.get $l1)
                  (local.get $l3))
                (drop
                  (call $f40))
                (call $f42
                  (local.get $l1)
                  (call $f32
                    (local.get $l2)))
                (br_if $B17
                  (call $f45
                    (local.get $l6)))
                (call $f43
                  (local.get $l1)
                  (local.get $l6))
                (br $B17))
              (call $f43
                (local.get $l1)
                (local.get $l6))
              (br $B16))
            (local.set $l2
              (call $f34))
            (local.set $l3
              (call $f46))
            (br $B15
              (call $f35
                (i32.const 1048779)
                (i32.const 15))))
          (local.set $l3
            (call $f46))
          (call $f35
            (i32.const 1048794)
            (i32.const 12))))
      (drop
        (call $env.mBufferAppend
          (local.get $l1)
          (local.get $l5)))
      (local.set $l5
        (local.get $l1)))
    (drop
      (call $env.managedExecuteOnDestContext
        (call $env.getGasLeft)
        (local.get $l2)
        (local.get $l3)
        (local.get $l6)
        (local.get $l5)
        (call $f31)))
    (call $env.cleanReturnData)
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 32))))
  (func $wrap_callback (export "wrap_callback") (type $t0)
    (call $f36)
    (call $f38
      (i32.const 0)))
  (func $wrap_egld_callback (export "wrap_egld_callback") (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i64)
    (call $f38
      (i32.const 0))
    (call $env.getGasLeft)
    (call $env.bigIntMul
      (local.tee $l0
        (call $f30
          (i64.const 1000000000000000000)))
      (local.get $l0)
      (call $f30
        (i64.const 800000)))
    (drop
      (call $env.mBufferStorageLoad
        (call $f55)
        (local.tee $l1
          (call $f31))))
    (if $I0
      (i32.ne
        (call $env.mBufferGetLength
          (local.get $l1))
        (i32.const 32))
      (then
        (drop
          (call $env.mBufferAppendBytes
            (local.tee $l0
              (call $f35
                (i32.const 1048835)
                (i32.const 22)))
            (i32.const 1048857)
            (i32.const 16)))
        (call $env.managedSignalError
          (local.get $l0))
        (unreachable)))
    (i64.const 1)
    (drop
      (call $env.managedExecuteOnDestContextByCaller
        (i64.shr_u)
        (local.get $l1)
        (local.get $l0)
        (call $f35
          (i32.const 1048902)
          (i32.const 13))
        (call $f40)
        (call $f31))))
  (func $callBack (export "callBack") (type $t0)
    (nop))
  (func $f62 (type $t0)
    (call $env.signalError
      (i32.const 1048936)
      (i32.const 14))
    (unreachable))
  (memory $memory (export "memory") 17)
  (global $g0 (mut i32) (i32.const 1048576))
  (global $__data_end (export "__data_end") i32 (i32.const 1048993))
  (global $__heap_base (export "__heap_base") i32 (i32.const 1049008))
  (data $d0 (i32.const 1048576) "recipient address not setEndpoint can only be called by ownerincorrect number of ESDT transfersargument decode error (): function does not accept ESDT paymentwrong number of argumentsMultiESDTNFTTransferESDTNFTTransferESDTTransferManagedVec index out of rangestorage decode error: bad array lengthaddresswrapEgldwrap_egld_addrwrap_callbackwrap_egld_callback\00\00\00panic occurred")
  (data $d1 (i32.const 1048952) "\9c\ff\ff\ff"))
