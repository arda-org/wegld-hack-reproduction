
(module
  (type $t0 (func (param i32) (result i32)))
  (type $t1 (func))
  (type $t2 (func (param i32 i32)))
  (type $t3 (func (result i32)))
  (type $t4 (func (param i32)))
  (type $t5 (func (param i32 i32) (result i32)))
  (type $t6 (func (param i32 i32 i32)))
  (type $t7 (func (param i32 i32 i32 i32)))
  (type $t8 (func (param i32 i32 i32) (result i32)))
  (type $t9 (func (param i32 i32 i32 i32) (result i32)))
  (type $t10 (func (param i32 i32 i32 i32 i32)))
  (type $t11 (func (param i32 i64)))
  (type $t12 (func (param i32 i32 i64 i32 i32) (result i32)))
  (type $t13 (func (param i32 i32) (result i64)))
  (type $t14 (func (param i32 i32 i32 i32 i32 i32)))
  (type $t15 (func (param i32 i64 i32 i32)))
  (type $t16 (func (param i64)))
  (type $t17 (func (param i64 i32 i32)))
  (type $t18 (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type $t19 (func (result i64)))
  (type $t20 (func (param i32) (result i64)))
  (import "env" "signalError" (func $env.signalError (type $t2)))
  (import "env" "mBufferNew" (func $env.mBufferNew (type $t3)))
  (import "env" "mBufferAppend" (func $env.mBufferAppend (type $t5)))
  (import "env" "mBufferEq" (func $env.mBufferEq (type $t5)))
  (import "env" "managedTransferValueExecute" (func $env.managedTransferValueExecute (type $t12)))
  (import "env" "managedSCAddress" (func $env.managedSCAddress (type $t4)))
  (import "env" "managedExecuteOnDestContext" (func $env.managedExecuteOnDestContext (type $t18)))
  (import "env" "cleanReturnData" (func $env.cleanReturnData (type $t1)))
  (import "env" "managedCaller" (func $env.managedCaller (type $t4)))
  (import "env" "managedOwnerAddress" (func $env.managedOwnerAddress (type $t4)))
  (import "env" "bigIntGetCallValue" (func $env.bigIntGetCallValue (type $t4)))
  (import "env" "managedGetMultiESDTCallValue" (func $env.managedGetMultiESDTCallValue (type $t4)))
  (import "env" "mBufferAppendBytes" (func $env.mBufferAppendBytes (type $t8)))
  (import "env" "managedSignalError" (func $env.managedSignalError (type $t4)))
  (import "env" "getNumESDTTransfers" (func $env.getNumESDTTransfers (type $t3)))
  (import "env" "smallIntGetUnsignedArgument" (func $env.smallIntGetUnsignedArgument (type $t20)))
  (import "env" "mBufferGetLength" (func $env.mBufferGetLength (type $t0)))
  (import "env" "getNumArguments" (func $env.getNumArguments (type $t3)))
  (import "env" "mBufferSetBytes" (func $env.mBufferSetBytes (type $t8)))
  (import "env" "mBufferStorageStore" (func $env.mBufferStorageStore (type $t5)))
  (import "env" "managedGetOriginalTxHash" (func $env.managedGetOriginalTxHash (type $t4)))
  (import "env" "bigIntSign" (func $env.bigIntSign (type $t0)))
  (import "env" "mBufferGetByteSlice" (func $env.mBufferGetByteSlice (type $t9)))
  (import "env" "mBufferFromBigIntUnsigned" (func $env.mBufferFromBigIntUnsigned (type $t5)))
  (import "env" "mBufferStorageLoad" (func $env.mBufferStorageLoad (type $t5)))
  (import "env" "mBufferGetArgument" (func $env.mBufferGetArgument (type $t5)))
  (import "env" "mBufferCopyByteSlice" (func $env.mBufferCopyByteSlice (type $t9)))
  (import "env" "bigIntSetInt64" (func $env.bigIntSetInt64 (type $t11)))
  (import "env" "managedAsyncCall" (func $env.managedAsyncCall (type $t7)))
  (import "env" "managedWriteLog" (func $env.managedWriteLog (type $t2)))
  (import "env" "checkNoPayment" (func $env.checkNoPayment (type $t1)))
  (import "env" "smallIntFinishSigned" (func $env.smallIntFinishSigned (type $t16)))
  (import "env" "mBufferGetBytes" (func $env.mBufferGetBytes (type $t5)))
  (import "env" "bigIntGetExternalBalance" (func $env.bigIntGetExternalBalance (type $t2)))
  (import "env" "bigIntCmp" (func $env.bigIntCmp (type $t5)))
  (import "env" "getGasLeft" (func $env.getGasLeft (type $t19)))
  (import "env" "bigIntAdd" (func $env.bigIntAdd (type $t6)))
  (import "env" "managedMultiTransferESDTNFTExecute" (func $env.managedMultiTransferESDTNFTExecute (type $t12)))
  (func $f38 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (block $B0
      (if $I1
        (i32.ge_u
          (local.get $p2)
          (local.get $p1))
        (then
          (br_if $B0
            (i32.le_u
              (local.get $p2)
              (local.get $p4)))
          (call $f39)
          (unreachable)))
      (call $f39)
      (unreachable))
    (i32.store offset=4
      (local.get $p0)
      (i32.sub
        (local.get $p2)
        (local.get $p1)))
    (i32.store
      (local.get $p0)
      (i32.add
        (local.get $p1)
        (local.get $p3))))
  (func $f39 (type $t1)
    (call $f121)
    (unreachable))
  (func $f40 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32)
    (drop
      (call $env.mBufferAppend
        (local.tee $l1
          (call $env.mBufferNew))
        (i32.load
          (local.get $p0))))
    (local.get $l1))
  (func $f41 (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (i32.gt_s
      (call $env.mBufferEq
        (local.get $p0)
        (local.get $p1))
      (i32.const 0)))
  (func $f42 (type $t2) (param $p0 i32) (param $p1 i32)
    (call $env.signalError
      (local.get $p0)
      (local.get $p1))
    (unreachable))
  (func $f43 (type $t2) (param $p0 i32) (param $p1 i32)
    (drop
      (call $env.managedTransferValueExecute
        (local.get $p0)
        (local.get $p1)
        (i64.const 0)
        (call $f44)
        (call $f45))))
  (func $f44 (type $t3) (result i32)
    (call $f55
      (i32.const 1049432)
      (i32.const 0)))
  (func $f45 (type $t3) (result i32)
    (local $l0 i32)
    (drop
      (call $env.mBufferSetBytes
        (local.tee $l0
          (call $f48))
        (i32.const 1049432)
        (i32.const 0)))
    (local.get $l0))
  (func $f46 (type $t17) (param $p0 i64) (param $p1 i32) (param $p2 i32)
    (call $env.managedSCAddress
      (i32.const -25))
    (drop
      (call $env.managedExecuteOnDestContext
        (local.get $p0)
        (i32.const -25)
        (call $f47)
        (local.get $p1)
        (local.get $p2)
        (call $f48)))
    (call $env.cleanReturnData))
  (func $f47 (type $t3) (result i32)
    (local $l0 i32)
    (call $f92
      (local.tee $l0
        (call $f48)))
    (local.get $l0))
  (func $f48 (type $t3) (result i32)
    (local $l0 i32)
    (i32.store
      (i32.const 1049704)
      (local.tee $l0
        (i32.add
          (i32.load
            (i32.const 1049704))
          (i32.const -1))))
    (local.get $l0))
  (func $f49 (type $t3) (result i32)
    (local $l0 i32)
    (call $env.managedCaller
      (local.tee $l0
        (call $f48)))
    (local.get $l0))
  (func $f50 (type $t3) (result i32)
    (local $l0 i32)
    (call $env.managedSCAddress
      (local.tee $l0
        (call $f48)))
    (local.get $l0))
  (func $f51 (type $t1)
    (local $l0 i32)
    (call $env.managedOwnerAddress
      (local.tee $l0
        (call $f48)))
    (if $I0
      (call $f41
        (local.get $l0)
        (call $f49))
      (then
        (return)))
    (call $env.signalError
      (i32.const 1048627)
      (i32.const 36))
    (unreachable))
  (func $f52 (type $t3) (result i32)
    (local $l0 i32)
    (if $I0
      (local.tee $l0
        (i32.load8_u
          (i32.const 1059720)))
      (then
        (return
          (select
            (i32.const -11)
            (i32.const 2147483647)
            (local.get $l0)))))
    (i32.store8
      (i32.const 1059720)
      (i32.const 1))
    (call $env.bigIntGetCallValue
      (i32.const -11))
    (i32.const -11))
  (func $f53 (type $t3) (result i32)
    (local $l0 i32)
    (if $I0
      (local.tee $l0
        (i32.load8_u
          (i32.const 1059724)))
      (then
        (return
          (select
            (i32.const -21)
            (i32.const 2147483647)
            (local.get $l0)))))
    (i32.store8
      (i32.const 1059724)
      (i32.const 1))
    (call $env.managedGetMultiESDTCallValue
      (i32.const -21))
    (i32.const -21))
  (func $f54 (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (drop
      (call $env.mBufferAppendBytes
        (local.tee $l3
          (call $f55
            (i32.const 1048697)
            (i32.const 23)))
        (local.get $p0)
        (i32.const 6)))
    (drop
      (call $env.mBufferAppendBytes
        (local.get $l3)
        (i32.const 1048720)
        (i32.const 3)))
    (drop
      (call $env.mBufferAppendBytes
        (local.get $l3)
        (local.get $p1)
        (local.get $p2)))
    (call $env.managedSignalError
      (local.get $l3))
    (unreachable))
  (func $f55 (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (drop
      (call $env.mBufferSetBytes
        (local.tee $l2
          (call $f48))
        (local.get $p0)
        (local.get $p1)))
    (local.get $l2))
  (func $f56 (type $t1)
    (if $I0
      (i32.eqz
        (call $env.getNumESDTTransfers))
      (then
        (return)))
    (call $env.signalError
      (i32.const 1048723)
      (i32.const 37))
    (unreachable))
  (func $f57 (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64)
    (if $I0
      (i64.lt_u
        (local.tee $l4
          (call $env.smallIntGetUnsignedArgument
            (call $f58
              (local.get $p1))))
        (i64.const 4294967296))
      (then
        (local.set $l3
          (block $B1 (result i32)
            (if $I2
              (i32.eqz
                (local.tee $l2
                  (i32.wrap_i64
                    (local.get $l4))))
              (then
                (local.set $l2
                  (call $f59
                    (call $f58
                      (local.get $p1))))
                (br $B1
                  (i32.const 0))))
            (if $I3
              (i32.ge_s
                (i32.load
                  (local.get $p1))
                (i32.load
                  (i32.const 1059716)))
              (then
                (local.set $p1
                  (call $f45))
                (br $B1
                  (i32.const 1))))
            (local.set $p1
              (call $f59
                (call $f58
                  (local.get $p1))))
            (i32.const 1)))
        (i32.store offset=4
          (local.get $p0)
          (local.get $l2))
        (i32.store
          (local.get $p0)
          (local.get $l3))
        (i32.store
          (i32.add
            (local.get $p0)
            (i32.const 8))
          (local.get $p1))
        (return)))
    (call $f54
      (i32.const 1049290)
      (i32.const 1049008)
      (i32.const 14))
    (unreachable))
  (func $f58 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32)
    (if $I0
      (i32.ge_s
        (local.tee $l1
          (i32.load
            (local.get $p0)))
        (i32.load
          (i32.const 1059716)))
      (then
        (call $f54
          (i32.const 1049290)
          (i32.const 1048760)
          (i32.const 17))
        (unreachable)))
    (i32.store
      (local.get $p0)
      (i32.add
        (local.get $l1)
        (i32.const 1)))
    (local.get $l1))
  (func $f59 (type $t0) (param $p0 i32) (result i32)
    (drop
      (call $env.mBufferGetArgument
        (local.get $p0)
        (local.tee $p0
          (call $f48))))
    (local.get $p0))
  (func $f60 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (local.set $l3
      (i32.load offset=8
        (local.get $p0)))
    (i32.store offset=8
      (local.get $l1)
      (i32.const 0))
    (block $B0
      (if $I1
        (i32.eqz
          (call $f61
            (i32.load
              (local.get $p0))
            (i32.shl
              (local.get $l3)
              (i32.const 2))
            (i32.add
              (local.get $l1)
              (i32.const 8))
            (i32.const 4)))
        (then
          (local.set $l2
            (i32.load offset=8
              (local.get $l1)))
          (i32.store offset=8
            (local.get $p0)
            (i32.add
              (local.get $l3)
              (i32.const 1)))
          (i32.store offset=4
            (local.get $l1)
            (i32.or
              (i32.or
                (i32.and
                  (i32.shl
                    (local.get $l2)
                    (i32.const 8))
                  (i32.const 16711680))
                (i32.shl
                  (local.get $l2)
                  (i32.const 24)))
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $l2)
                    (i32.const 8))
                  (i32.const 65280))
                (i32.shr_u
                  (local.get $l2)
                  (i32.const 24)))))
          (i32.store offset=12
            (local.get $l1)
            (call $f40
              (i32.add
                (local.get $l1)
                (i32.const 4))))
          (br_if $B0
            (i32.ne
              (call $env.mBufferGetLength
                (local.tee $p0
                  (call $f40
                    (i32.add
                      (local.get $l1)
                      (i32.const 12)))))
              (i32.const 32)))
          (global.set $g0
            (i32.add
              (local.get $l1)
              (i32.const 16)))
          (return
            (local.get $p0))))
      (call $f54
        (i32.const 1049296)
        (i32.const 1048760)
        (i32.const 17))
      (unreachable))
    (call $f54
      (i32.const 1049296)
      (i32.const 1049106)
      (i32.const 16))
    (unreachable))
  (func $f61 (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (i32.ne
      (call $env.mBufferGetByteSlice
        (local.get $p0)
        (local.get $p1)
        (local.get $p3)
        (local.get $p2))
      (i32.const 0)))
  (func $f62 (type $t4) (param $p0 i32)
    (if $I0
      (i32.eq
        (call $env.getNumArguments)
        (local.get $p0))
      (then
        (return)))
    (call $env.signalError
      (i32.const 1048795)
      (i32.const 25))
    (unreachable))
  (func $f63 (type $t1)
    (i32.store
      (i32.const 1059716)
      (call $env.getNumArguments)))
  (func $f64 (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (call $f65
      (local.get $p0)
      (local.get $p1)
      (local.get $p2))
    (call $f65
      (local.get $p0)
      (select
        (i32.const 1049460)
        (i32.const 1049464)
        (local.get $p3))
      (select
        (i32.const 4)
        (i32.const 5)
        (local.get $p3))))
  (func $f65 (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (call $f71
      (local.get $p0)
      (call $f55
        (local.get $p1)
        (local.get $p2))))
  (func $f66 (type $t14) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32)
    (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i64)
    (global.set $g0
      (local.tee $l6
        (i32.add
          (global.get $g0)
          (i32.const -64))))
    (local.set $l7
      (i32.load8_u offset=11
        (local.get $p5)))
    (local.set $l8
      (i32.load8_u offset=10
        (local.get $p5)))
    (local.set $l9
      (i32.load8_u offset=9
        (local.get $p5)))
    (local.set $l10
      (i32.load8_u offset=8
        (local.get $p5)))
    (local.set $l11
      (i32.load8_u offset=7
        (local.get $p5)))
    (local.set $l12
      (i32.load8_u offset=6
        (local.get $p5)))
    (local.set $l13
      (i32.load8_u offset=5
        (local.get $p5)))
    (local.set $l14
      (i32.load8_u offset=4
        (local.get $p5)))
    (local.set $l15
      (i64.load32_u
        (local.get $p5)))
    (call $f68
      (i32.add
        (local.get $l6)
        (i32.const 8))
      (call $f67)
      (call $f55
        (i32.const 1048866)
        (i32.const 5)))
    (drop
      (call $env.mBufferSetBytes
        (i32.load offset=32
          (local.get $l6))
        (i32.const 1049432)
        (i32.const 0)))
    (i32.store offset=28
      (local.get $l6)
      (local.get $p1))
    (call $f69
      (local.tee $p0
        (i32.load
          (i32.add
            (call $f124
              (local.get $p0)
              (i32.add
                (local.get $l6)
                (i32.const 8))
              (i32.const 56))
            (i32.const 32))))
      (local.get $p2))
    (call $f69
      (local.get $p0)
      (local.get $p3))
    (drop
      (call $f45))
    (call $f71
      (local.get $p0)
      (call $f70
        (local.get $p4)))
    (call $f72
      (local.tee $p1
        (call $f45))
      (local.get $l15))
    (call $f71
      (local.get $p0)
      (local.get $p1))
    (call $f64
      (local.get $p0)
      (i32.const 1048871)
      (i32.const 9)
      (i32.ne
        (local.get $l14)
        (i32.const 0)))
    (call $f64
      (local.get $p0)
      (i32.const 1048880)
      (i32.const 7)
      (i32.ne
        (local.get $l13)
        (i32.const 0)))
    (call $f64
      (local.get $p0)
      (i32.const 1048887)
      (i32.const 8)
      (i32.ne
        (local.get $l12)
        (i32.const 0)))
    (call $f64
      (local.get $p0)
      (i32.const 1048895)
      (i32.const 7)
      (i32.ne
        (local.get $l11)
        (i32.const 0)))
    (call $f64
      (local.get $p0)
      (i32.const 1048902)
      (i32.const 7)
      (i32.ne
        (local.get $l10)
        (i32.const 0)))
    (call $f64
      (local.get $p0)
      (i32.const 1048909)
      (i32.const 14)
      (i32.ne
        (local.get $l9)
        (i32.const 0)))
    (call $f64
      (local.get $p0)
      (i32.const 1048923)
      (i32.const 10)
      (i32.ne
        (local.get $l8)
        (i32.const 0)))
    (call $f64
      (local.get $p0)
      (i32.const 1048933)
      (i32.const 18)
      (i32.ne
        (local.get $l7)
        (i32.const 0)))
    (global.set $g0
      (i32.sub
        (local.get $l6)
        (i32.const -64))))
  (func $f67 (type $t3) (result i32)
    (call $f55
      (i32.const 1048834)
      (i32.const 32)))
  (func $f68 (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (local.set $l3
      (call $f45))
    (local.set $l4
      (call $f45))
    (local.set $l5
      (call $f47))
    (i32.store offset=28
      (local.get $p0)
      (local.get $p2))
    (i32.store offset=24
      (local.get $p0)
      (local.get $l3))
    (i32.store offset=20
      (local.get $p0)
      (local.get $l5))
    (i32.store offset=16
      (local.get $p0)
      (local.get $p1))
    (i64.store
      (local.get $p0)
      (i64.const -1))
    (i64.store
      (i32.add
        (local.get $p0)
        (i32.const 8))
      (i64.const -1))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 48))
      (i32.const 0))
    (i32.store offset=44
      (local.get $p0)
      (i32.const 1049432))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 40))
      (i32.const 0))
    (i32.store offset=36
      (local.get $p0)
      (i32.const 1049432))
    (i32.store offset=32
      (local.get $p0)
      (local.get $l4)))
  (func $f69 (type $t2) (param $p0 i32) (param $p1 i32)
    (drop
      (call $f45))
    (call $f71
      (local.get $p0)
      (call $f40
        (local.get $p1))))
  (func $f70 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32)
    (drop
      (call $env.mBufferFromBigIntUnsigned
        (local.tee $l1
          (call $f48))
        (local.get $p0)))
    (local.get $l1))
  (func $f71 (type $t2) (param $p0 i32) (param $p1 i32)
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
  (func $f72 (type $t11) (param $p0 i32) (param $p1 i64)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i64.store offset=8
      (local.get $l2)
      (i64.const 0))
    (call $f106
      (local.get $l2)
      (local.get $p1)
      (i32.const 0)
      (i32.add
        (local.get $l2)
        (i32.const 8)))
    (drop
      (call $env.mBufferSetBytes
        (local.get $p0)
        (i32.load
          (local.get $l2))
        (i32.load offset=4
          (local.get $l2))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f73 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    (call $f68
      (local.get $p0)
      (call $f67)
      (call $f55
        (i32.const 1048820)
        (i32.const 14)))
    (drop
      (call $f45))
    (local.set $l5
      (call $f40
        (local.get $p2)))
    (call $f71
      (local.tee $p2
        (i32.load
          (i32.add
            (local.get $p0)
            (i32.const 32))))
      (local.get $l5))
    (drop
      (call $f45))
    (call $f71
      (local.get $p2)
      (call $f40
        (local.get $p1)))
    (loop $L0
      (if $I1
        (i32.ne
          (local.get $p3)
          (local.get $p4))
        (then
          (local.set $p1
            (i32.load8_u
              (local.get $p3)))
          (local.set $p3
            (local.tee $p0
              (i32.add
                (local.get $p3)
                (i32.const 1))))
          (br_if $L0
            (i32.eqz
              (local.get $p1)))
          (call $f65
            (local.get $p2)
            (i32.load
              (i32.add
                (local.tee $p1
                  (i32.shl
                    (local.get $p1)
                    (i32.const 2)))
                (i32.const 1049668)))
            (i32.load
              (i32.add
                (local.get $p1)
                (i32.const 1049632))))
          (local.set $p3
            (local.get $p0))
          (br $L0)))))
  (func $f74 (type $t4) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (if $I0
      (i32.eq
        (i32.load offset=16
          (local.get $p0))
        (i32.const 1))
      (then
        (call $f75)
        (local.set $l3
          (block $B1 (result i32)
            (if $I2
              (i32.eqz
                (i32.load8_u
                  (i32.const 1059712)))
              (then
                (local.set $l2
                  (i32.const 1))
                (i32.store8
                  (i32.const 1059712)
                  (i32.const 1))
                (i32.store
                  (i32.const 1049708)
                  (i32.const 0))
                (call $f76
                  (i32.add
                    (local.get $l1)
                    (i32.const 8))
                  (i32.const 0))
                (call $f77
                  (i32.load offset=8
                    (local.get $l1))
                  (i32.load offset=12
                    (local.get $l1))
                  (i32.const 1049432)
                  (i32.const 0))
                (br $B1
                  (call $f45))))
            (call $f55
              (i32.const 1049432)
              (i32.const 0))))
        (i32.store8 offset=20
          (local.get $l1)
          (local.get $l2))
        (i32.store offset=16
          (local.get $l1)
          (local.get $l3))
        (call $f78
          (i32.load
            (i32.add
              (local.get $p0)
              (i32.const 20)))
          (i32.add
            (local.get $l1)
            (i32.const 16)))
        (i32.store offset=24
          (local.get $l1)
          (i32.or
            (i32.or
              (i32.shl
                (local.tee $l2
                  (call $f79
                    (local.tee $l4
                      (i32.load
                        (i32.add
                          (local.get $p0)
                          (i32.const 24))))))
                (i32.const 24))
              (i32.and
                (i32.shl
                  (local.get $l2)
                  (i32.const 8))
                (i32.const 16711680)))
            (i32.or
              (i32.and
                (i32.shr_u
                  (local.get $l2)
                  (i32.const 8))
                (i32.const 65280))
              (i32.shr_u
                (local.get $l2)
                (i32.const 24)))))
        (call $f80
          (i32.add
            (local.get $l1)
            (i32.const 16))
          (i32.add
            (local.get $l1)
            (i32.const 24)))
        (local.set $l6
          (call $env.mBufferGetLength
            (local.get $l4)))
        (local.set $l2
          (i32.const 0))
        (loop $L3
          (if $I4
            (i32.le_u
              (local.tee $l3
                (i32.add
                  (local.get $l2)
                  (i32.const 4)))
              (local.get $l6))
            (then
              (i32.store offset=24
                (local.get $l1)
                (i32.const 0))
              (drop
                (call $f61
                  (local.get $l4)
                  (local.get $l2)
                  (i32.add
                    (local.get $l1)
                    (i32.const 24))
                  (i32.const 4)))
              (call $f78
                (i32.or
                  (i32.or
                    (i32.shl
                      (local.tee $l2
                        (i32.load offset=24
                          (local.get $l1)))
                      (i32.const 24))
                    (i32.and
                      (i32.shl
                        (local.get $l2)
                        (i32.const 8))
                      (i32.const 16711680)))
                  (i32.or
                    (i32.and
                      (i32.shr_u
                        (local.get $l2)
                        (i32.const 8))
                      (i32.const 65280))
                    (i32.shr_u
                      (local.get $l2)
                      (i32.const 24))))
                (i32.add
                  (local.get $l1)
                  (i32.const 16)))
              (local.set $l2
                (local.get $l3))
              (br $L3))))
        (local.set $l2
          (i32.load offset=16
            (local.get $l1)))
        (i32.store8 offset=28
          (local.get $l1)
          (i32.load8_u offset=20
            (local.get $l1)))
        (i32.store offset=24
          (local.get $l1)
          (local.get $l2))
        (call $f81
          (i32.add
            (local.get $l1)
            (i32.const 24)))
        (i32.load offset=24
          (local.get $l1))
        (if $I5
          (i32.load8_u offset=28
            (local.get $l1))
          (then
            (i32.store
              (i32.const 1049708)
              (i32.const 0))
            (i32.store8
              (i32.const 1059712)
              (i32.const 0))))
        (drop
          (call $env.mBufferStorageStore))))
    (call $env.managedAsyncCall
      (i32.load
        (local.get $p0))
      (i32.load offset=4
        (local.get $p0))
      (i32.load offset=8
        (local.get $p0))
      (i32.load offset=12
        (local.get $p0)))
    (unreachable))
  (func $f75 (type $t3) (result i32)
    (local $l0 i32) (local $l1 i32)
    (call $env.managedGetOriginalTxHash
      (local.tee $l0
        (call $f48)))
    (drop
      (call $env.mBufferAppend
        (local.tee $l1
          (call $f55
            (i32.const 1048998)
            (i32.const 10)))
        (local.get $l0)))
    (local.get $l1))
  (func $f76 (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f97
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (i32.const 1049712)
      (i32.const 10000)
      (local.get $p1))
    (local.set $p1
      (i32.load offset=12
        (local.get $l2)))
    (i32.store
      (local.get $p0)
      (i32.load offset=8
        (local.get $l2)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p1))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f77 (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (if $I0
      (i32.eq
        (local.get $p1)
        (local.get $p3))
      (then
        (drop
          (call $f124
            (local.get $p0)
            (local.get $p2)
            (local.get $p1)))
        (return)))
    (call $f121)
    (unreachable))
  (func $f78 (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l3)
      (i32.or
        (i32.or
          (i32.shl
            (local.tee $l2
              (call $env.mBufferGetLength
                (local.get $p0)))
            (i32.const 24))
          (i32.and
            (i32.shl
              (local.get $l2)
              (i32.const 8))
            (i32.const 16711680)))
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $l2)
              (i32.const 8))
            (i32.const 65280))
          (i32.shr_u
            (local.get $l2)
            (i32.const 24)))))
    (call $f80
      (local.get $p1)
      (i32.add
        (local.get $l3)
        (i32.const 12)))
    (local.set $l2
      (i32.load8_u offset=4
        (local.get $p1)))
    (i32.store8 offset=4
      (local.get $p1)
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (if $I3
            (local.tee $l2
              (i32.and
                (local.get $l2)
                (i32.const 1)))
            (then
              (local.set $l4
                (call $env.mBufferGetLength
                  (local.get $p0)))
              (br_if $B1
                (i32.lt_u
                  (i32.sub
                    (i32.const 10000)
                    (local.tee $l5
                      (i32.load
                        (i32.const 1049708))))
                  (local.get $l4)))
              (call $f108
                (local.get $l3)
                (local.get $l5)
                (local.tee $l4
                  (i32.add
                    (local.get $l4)
                    (local.get $l5))))
              (drop
                (call $f61
                  (local.get $p0)
                  (i32.const 0)
                  (i32.load
                    (local.get $l3))
                  (i32.load offset=4
                    (local.get $l3))))
              (i32.store
                (i32.const 1049708)
                (local.get $l4))
              (br $B2)))
          (call $f91
            (i32.load
              (local.get $p1))
            (local.get $p0)))
        (i32.store8 offset=4
          (local.get $p1)
          (local.get $l2))
        (br $B0))
      (call $f81
        (local.get $p1))
      (call $f91
        (i32.load
          (local.get $p1))
        (local.get $p0))
      (i32.load8_u offset=4
        (local.get $p1))
      (i32.store8 offset=4
        (local.get $p1)
        (local.get $l2))
      (i32.const 1)
      (br_if $B0
        (i32.eqz
          (i32.and)))
      (i32.store
        (i32.const 1049708)
        (i32.const 0))
      (i32.store8
        (i32.const 1059712)
        (i32.const 0)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $f79 (type $t0) (param $p0 i32) (result i32)
    (i32.shr_u
      (call $env.mBufferGetLength
        (local.get $p0))
      (i32.const 2)))
  (func $f80 (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (if $I2
          (i32.load8_u offset=4
            (local.get $p0))
          (then
            (br_if $B1
              (i32.lt_u
                (i32.add
                  (local.tee $l3
                    (i32.load
                      (i32.const 1049708)))
                  (i32.const -9997))
                (i32.const 4)))
            (call $f108
              (i32.add
                (local.get $l2)
                (i32.const 8))
              (local.get $l3)
              (local.tee $p0
                (i32.add
                  (local.get $l3)
                  (i32.const 4))))
            (call $f77
              (i32.load offset=8
                (local.get $l2))
              (i32.load offset=12
                (local.get $l2))
              (local.get $p1)
              (i32.const 4))
            (i32.store
              (i32.const 1049708)
              (local.get $p0))
            (br $B0)))
        (drop
          (call $env.mBufferAppendBytes
            (i32.load
              (local.get $p0))
            (local.get $p1)
            (i32.const 4)))
        (br $B0))
      (call $f81
        (local.get $p0))
      (drop
        (call $env.mBufferAppendBytes
          (i32.load
            (local.get $p0))
          (local.get $p1)
          (i32.const 4))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f81 (type $t4) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.load8_u offset=4
      (local.get $p0))
    (i32.store8 offset=4
      (local.get $p0)
      (i32.const 0))
    (i32.const 1)
    (if $I0
      (i32.and)
      (then
        (call $f94
          (i32.add
            (local.get $l1)
            (i32.const 8))
          (i32.const 0)
          (i32.load
            (i32.const 1049708)))
        (drop
          (call $env.mBufferAppendBytes
            (i32.load
              (local.get $p0))
            (i32.load offset=8
              (local.get $l1))
            (i32.load offset=12
              (local.get $l1))))
        (i32.store
          (i32.const 1049708)
          (i32.const 0))
        (i32.store8
          (i32.const 1059712)
          (i32.const 0))))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 16))))
  (func $f82 (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i64) (local $l18 i64) (local $l19 i64)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 96))))
    (local.set $l11
      (i32.load
        (i32.add
          (local.get $p1)
          (i32.const 48))))
    (local.set $l12
      (i32.load
        (i32.add
          (local.get $p1)
          (i32.const 40))))
    (local.set $l5
      (i32.load offset=52
        (local.get $p1)))
    (local.set $l13
      (i32.load offset=44
        (local.get $p1)))
    (local.set $l14
      (i32.load offset=36
        (local.get $p1)))
    (local.set $l10
      (i32.load offset=32
        (local.get $p1)))
    (local.set $l6
      (i32.load offset=28
        (local.get $p1)))
    (local.set $l7
      (i32.load offset=20
        (local.get $p1)))
    (local.set $l3
      (i32.load offset=16
        (local.get $p1)))
    (local.set $l17
      (i64.load offset=8
        (local.get $p1)))
    (local.set $l18
      (i64.load
        (local.get $p1)))
    (block $B0
      (block $B1
        (block $B2
          (br_table $B0 $B1 $B2
            (call $f83
              (local.tee $l8
                (i32.load offset=24
                  (local.get $p1))))))
        (local.set $l15
          (call $f45))
        (local.set $l9
          (call $f45))
        (i32.store
          (local.get $l4)
          (local.get $l3))
        (drop
          (call $f45))
        (call $f71
          (local.get $l9)
          (call $f40
            (local.get $l4)))
        (local.set $l3
          (call $f83
            (local.get $l8)))
        (call $f72
          (local.tee $l2
            (call $f45))
          (i64.extend_i32_u
            (local.get $l3)))
        (call $f71
          (local.get $l9)
          (local.get $l2))
        (local.set $l7
          (call $env.mBufferGetLength
            (local.get $l8)))
        (local.set $l16
          (i32.add
            (local.get $l4)
            (i32.const 8)))
        (local.set $l3
          (i32.const 0))
        (loop $L3
          (if $I4
            (i32.gt_u
              (local.tee $l2
                (i32.add
                  (local.get $l3)
                  (i32.const 16)))
              (local.get $l7))
            (then
              (if $I5
                (i32.eqz
                  (call $f84
                    (local.get $l6)))
                (then
                  (i32.store
                    (local.get $l4)
                    (local.get $l6))
                  (drop
                    (call $f45))
                  (call $f71
                    (local.get $l9)
                    (call $f40
                      (local.get $l4)))))
              (local.set $l3
                (call $f50))
              (local.set $l7
                (call $f47))
              (local.set $l6
                (call $f55
                  (i32.const 1048951)
                  (i32.const 20)))
              (local.set $l10
                (call $f85
                  (local.get $l9)
                  (local.get $l10)))
              (local.set $l8
                (local.get $l15))
              (br $B0))
            (else
              (i64.store
                (local.get $l16)
                (i64.const 0))
              (i64.store
                (local.get $l4)
                (i64.const 0))
              (drop
                (call $f61
                  (local.get $l8)
                  (local.get $l3)
                  (local.get $l4)
                  (i32.const 16)))
              (i32.store offset=56
                (local.get $l4)
                (i32.const 0))
              (local.set $l3
                (call $f86
                  (local.get $l4)
                  (i32.add
                    (local.get $l4)
                    (i32.const 56))))
              (local.set $l19
                (call $f87
                  (local.get $l4)
                  (i32.add
                    (local.get $l4)
                    (i32.const 56))))
              (local.set $l5
                (call $f86
                  (local.get $l4)
                  (i32.add
                    (local.get $l4)
                    (i32.const 56))))
              (i32.store
                (local.get $l4)
                (local.get $l3))
              (drop
                (call $f45))
              (call $f71
                (local.get $l9)
                (call $f40
                  (local.get $l4)))
              (call $f72
                (local.tee $l3
                  (call $f45))
                (local.get $l19))
              (call $f71
                (local.get $l9)
                (local.get $l3))
              (drop
                (call $f45))
              (call $f71
                (local.get $l9)
                (call $f70
                  (local.get $l5)))
              (local.set $l3
                (local.get $l2))
              (br $L3)))
          (unreachable))
        (unreachable))
      (call $f88
        (i32.add
          (local.tee $l2
            (call $f124
              (local.get $l4)
              (local.get $p1)
              (i32.const 56)))
          (i32.const 56))
        (i32.load offset=24
          (local.get $l2)))
      (local.set $l17
        (block $B6 (result i64)
          (block $B7
            (block $B8
              (block $B9
                (if $I10
                  (i64.eq
                    (i64.load offset=56
                      (local.get $l2))
                    (i64.const 1))
                  (then
                    (i64.store
                      (local.tee $l3
                        (i32.add
                          (local.get $l2)
                          (i32.const 88)))
                      (i64.load
                        (i32.add
                          (local.get $l2)
                          (i32.const 72))))
                    (i64.store offset=80
                      (local.get $l2)
                      (local.tee $l17
                        (i64.load offset=64
                          (local.get $l2))))
                    (local.set $l8
                      (call $f45))
                    (call $f69
                      (local.tee $l5
                        (call $f45))
                      (local.get $l3))
                    (block $B11
                      (if $I12
                        (i64.eqz
                          (local.get $l17))
                        (then
                          (call $f89
                            (local.get $l5)
                            (i32.load offset=92
                              (local.get $l2)))
                          (br_if $B11
                            (i32.eqz
                              (call $f84
                                (i32.load offset=28
                                  (local.get $l2)))))
                          (br $B7)))
                      (call $f72
                        (local.tee $l3
                          (call $f45))
                        (local.get $l17))
                      (call $f71
                        (local.get $l5)
                        (local.get $l3))
                      (call $f89
                        (local.get $l5)
                        (i32.load offset=92
                          (local.get $l2)))
                      (drop
                        (call $f45))
                      (call $f71
                        (local.get $l5)
                        (call $f40
                          (i32.add
                            (local.get $l2)
                            (i32.const 16))))
                      (br_if $B9
                        (i32.eqz
                          (call $f84
                            (i32.load offset=28
                              (local.get $l2)))))
                      (br $B8))
                    (call $f69
                      (local.get $l5)
                      (i32.add
                        (local.get $l2)
                        (i32.const 28)))
                    (br $B7)))
                (local.set $l11
                  (i32.load
                    (i32.add
                      (local.get $l2)
                      (i32.const 48))))
                (local.set $l12
                  (i32.load
                    (i32.add
                      (local.get $l2)
                      (i32.const 40))))
                (local.set $l5
                  (i32.load offset=52
                    (local.get $l2)))
                (local.set $l13
                  (i32.load offset=44
                    (local.get $l2)))
                (local.set $l14
                  (i32.load offset=36
                    (local.get $l2)))
                (local.set $l10
                  (i32.load offset=32
                    (local.get $l2)))
                (local.set $l6
                  (i32.load offset=28
                    (local.get $l2)))
                (local.set $l8
                  (i32.load offset=24
                    (local.get $l2)))
                (local.set $l7
                  (i32.load offset=20
                    (local.get $l2)))
                (local.set $l3
                  (i32.load offset=16
                    (local.get $l2)))
                (local.set $l17
                  (i64.load offset=8
                    (local.get $l2)))
                (local.set $l18
                  (i64.load
                    (local.get $l2)))
                (br $B0))
              (call $f69
                (local.get $l5)
                (i32.add
                  (local.get $l2)
                  (i32.const 28))))
            (local.set $l3
              (call $f50))
            (local.set $l7
              (call $f47))
            (local.set $l6
              (call $f55
                (i32.const 1048971)
                (i32.const 15)))
            (br $B6
              (i64.load offset=8
                (local.get $l2))))
          (local.set $l7
            (call $f47))
          (local.set $l6
            (call $f55
              (i32.const 1048986)
              (i32.const 12)))
          (local.set $l3
            (i32.load offset=16
              (local.get $l2)))
          (i64.load offset=8
            (local.get $l2))))
      (local.set $l18
        (i64.load
          (local.get $l2)))
      (local.set $l10
        (call $f85
          (local.get $l5)
          (i32.load offset=32
            (local.get $l2))))
      (local.set $l11
        (i32.load
          (i32.add
            (local.get $l2)
            (i32.const 48))))
      (local.set $l12
        (i32.load
          (i32.add
            (local.get $l2)
            (i32.const 40))))
      (local.set $l13
        (i32.load offset=44
          (local.get $l2)))
      (local.set $l14
        (i32.load offset=36
          (local.get $l2))))
    (i32.store offset=52
      (local.get $p1)
      (local.get $l5))
    (i32.store offset=48
      (local.get $p1)
      (local.get $l11))
    (i32.store offset=44
      (local.get $p1)
      (local.get $l13))
    (i32.store offset=40
      (local.get $p1)
      (local.get $l12))
    (i32.store offset=36
      (local.get $p1)
      (local.get $l14))
    (i32.store offset=32
      (local.get $p1)
      (local.get $l10))
    (i32.store offset=28
      (local.get $p1)
      (local.get $l6))
    (i32.store offset=24
      (local.get $p1)
      (local.get $l8))
    (i32.store offset=20
      (local.get $p1)
      (local.get $l7))
    (i32.store offset=16
      (local.get $p1)
      (local.get $l3))
    (i64.store offset=8
      (local.get $p1)
      (local.get $l17))
    (i64.store
      (local.get $p1)
      (local.get $l18))
    (i32.store offset=16
      (local.get $p0)
      (i32.const 0))
    (i32.store offset=12
      (local.get $p0)
      (local.get $l10))
    (i32.store offset=8
      (local.get $p0)
      (local.get $l6))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l7))
    (i32.store
      (local.get $p0)
      (local.get $l3))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 96))))
  (func $f83 (type $t0) (param $p0 i32) (result i32)
    (i32.shr_u
      (call $env.mBufferGetLength
        (local.get $p0))
      (i32.const 4)))
  (func $f84 (type $t0) (param $p0 i32) (result i32)
    (i32.eqz
      (call $env.mBufferGetLength
        (local.get $p0))))
  (func $f85 (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (drop
      (call $env.mBufferAppend
        (local.get $p0)
        (local.get $p1)))
    (local.get $p0))
  (func $f86 (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l2)
      (i32.const 0))
    (call $f93
      (local.get $l2)
      (local.get $p0)
      (local.tee $p0
        (i32.load
          (local.get $p1)))
      (local.tee $p0
        (i32.add
          (local.get $p0)
          (i32.const 4))))
    (call $f77
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
  (func $f87 (type $t13) (param $p0 i32) (param $p1 i32) (result i64)
    (local $l2 i32) (local $l3 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i64.store offset=8
      (local.get $l2)
      (i64.const 0))
    (call $f93
      (local.get $l2)
      (local.get $p0)
      (local.tee $p0
        (i32.load
          (local.get $p1)))
      (local.tee $p0
        (i32.add
          (local.get $p0)
          (i32.const 8))))
    (call $f77
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (i32.const 8)
      (i32.load
        (local.get $l2))
      (i32.load offset=4
        (local.get $l2)))
    (i32.store
      (local.get $p1)
      (local.get $p0))
    (local.set $l3
      (i64.load offset=8
        (local.get $l2)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (i64.or
      (i64.or
        (i64.or
          (i64.and
            (i64.shl
              (local.get $l3)
              (i64.const 40))
            (i64.const 71776119061217280))
          (i64.shl
            (local.get $l3)
            (i64.const 56)))
        (i64.or
          (i64.and
            (i64.shl
              (local.get $l3)
              (i64.const 24))
            (i64.const 280375465082880))
          (i64.and
            (i64.shl
              (local.get $l3)
              (i64.const 8))
            (i64.const 1095216660480))))
      (i64.or
        (i64.or
          (i64.and
            (i64.shr_u
              (local.get $l3)
              (i64.const 8))
            (i64.const 4278190080))
          (i64.and
            (i64.shr_u
              (local.get $l3)
              (i64.const 24))
            (i64.const 16711680)))
        (i64.or
          (i64.and
            (i64.shr_u
              (local.get $l3)
              (i64.const 40))
            (i64.const 65280))
          (i64.shr_u
            (local.get $l3)
            (i64.const 56))))))
  (func $f88 (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64) (local $l6 i64)
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
      (call $f61
        (local.get $p1)
        (i32.const 0)
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 16)))
    (i32.store offset=28
      (local.get $l2)
      (i32.const 0))
    (local.set $l3
      (call $f86
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.add
          (local.get $l2)
          (i32.const 28))))
    (local.set $l6
      (call $f87
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.add
          (local.get $l2)
          (i32.const 28))))
    (local.set $l4
      (call $f86
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
            (local.get $l6))
          (i32.store
            (i32.add
              (local.get $p0)
              (i32.const 20))
            (local.get $l4))
          (i32.store
            (i32.add
              (local.get $p0)
              (i32.const 16))
            (local.get $l3))
          (i64.const 1))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32))))
  (func $f89 (type $t2) (param $p0 i32) (param $p1 i32)
    (drop
      (call $f45))
    (call $f71
      (local.get $p0)
      (call $f70
        (local.get $p1))))
  (func $f90 (type $t0) (param $p0 i32) (result i32)
    (select
      (i32.const -1)
      (i32.ne
        (local.tee $p0
          (call $env.bigIntSign
            (local.get $p0)))
        (i32.const 0))
      (i32.lt_s
        (local.get $p0)
        (i32.const 0))))
  (func $f91 (type $t2) (param $p0 i32) (param $p1 i32)
    (drop
      (call $env.mBufferAppend
        (local.get $p0)
        (local.get $p1))))
  (func $f92 (type $t4) (param $p0 i32)
    (call $env.bigIntSetInt64
      (local.get $p0)
      (i64.const 0)))
  (func $f93 (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (block $B0
      (if $I1
        (i32.ge_u
          (local.get $p3)
          (local.get $p2))
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
      (call $f39)
      (unreachable))
    (call $f39)
    (unreachable))
  (func $f94 (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (block $B0
      (if $I1
        (i32.ge_u
          (local.get $p2)
          (local.get $p1))
        (then
          (br_if $B0
            (i32.le_u
              (local.get $p2)
              (i32.const 10000)))
          (call $f39)
          (unreachable)))
      (call $f39)
      (unreachable))
    (i32.store offset=4
      (local.get $p0)
      (i32.sub
        (local.get $p2)
        (local.get $p1)))
    (i32.store
      (local.get $p0)
      (i32.add
        (local.get $p1)
        (i32.const 1049712))))
  (func $f95 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i64)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i64.store offset=8
      (local.get $l1)
      (i64.const 0))
    (if $I0
      (i32.lt_u
        (local.tee $p0
          (call $env.mBufferGetLength
            (local.tee $l2
              (call $f96
                (local.get $p0)))))
        (i32.const 9))
      (then
        (call $f97
          (local.get $l1)
          (i32.add
            (local.get $l1)
            (i32.const 8))
          (i32.const 8)
          (local.get $p0))
        (local.set $p0
          (i32.const 0))
        (drop
          (call $f61
            (local.get $l2)
            (i32.const 0)
            (local.tee $l2
              (i32.load
                (local.get $l1)))
            (local.tee $l3
              (i32.load offset=4
                (local.get $l1)))))
        (block $B1
          (block $B2
            (if $I3
              (i64.le_u
                (local.tee $l4
                  (call $f98
                    (local.get $l2)
                    (local.get $l3)))
                (i64.const 1))
              (then
                (br_if $B1
                  (i32.sub
                    (i32.wrap_i64
                      (local.get $l4))
                    (i32.const 1)))
                (br $B2)))
            (call $f99
              (i32.const 1049066)
              (i32.const 18))
            (unreachable))
          (local.set $p0
            (i32.const 1)))
        (global.set $g0
          (i32.add
            (local.get $l1)
            (i32.const 16)))
        (return
          (local.get $p0))))
    (call $f99
      (i32.const 1049008)
      (i32.const 14))
    (unreachable))
  (func $f96 (type $t0) (param $p0 i32) (result i32)
    (drop
      (call $env.mBufferStorageLoad
        (local.get $p0)
        (local.tee $p0
          (call $f48))))
    (local.get $p0))
  (func $f97 (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f38
      (i32.add
        (local.get $l4)
        (i32.const 8))
      (i32.const 0)
      (local.get $p3)
      (local.get $p1)
      (local.get $p2))
    (local.set $p1
      (i32.load offset=12
        (local.get $l4)))
    (i32.store
      (local.get $p0)
      (i32.load offset=8
        (local.get $l4)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p1))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 16))))
  (func $f98 (type $t13) (param $p0 i32) (param $p1 i32) (result i64)
    (local $l2 i64)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p1)))
      (loop $L1
        (br_if $B0
          (i32.eqz
            (local.get $p1)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const -1)))
        (local.set $l2
          (i64.or
            (i64.load8_u
              (local.get $p0))
            (i64.shl
              (local.get $l2)
              (i64.const 8))))
        (local.set $p0
          (i32.add
            (local.get $p0)
            (i32.const 1)))
        (br $L1))
      (unreachable))
    (local.get $l2))
  (func $f99 (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (drop
      (call $env.mBufferAppendBytes
        (local.tee $l2
          (call $f55
            (i32.const 1049084)
            (i32.const 22)))
        (local.get $p0)
        (local.get $p1)))
    (call $env.managedSignalError
      (local.get $l2))
    (unreachable))
  (func $f100 (type $t0) (param $p0 i32) (result i32)
    (drop
      (call $env.mBufferStorageLoad
        (local.get $p0)
        (i32.const -25)))
    (i32.eqz
      (call $env.mBufferGetLength
        (i32.const -25))))
  (func $f101 (type $t0) (param $p0 i32) (result i32)
    (drop
      (call $f45))
    (call $f70
      (local.get $p0)))
  (func $f102 (type $t2) (param $p0 i32) (param $p1 i32)
    (call $f69
      (local.get $p0)
      (local.get $p1)))
  (func $f103 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32)
    (call $f71
      (local.tee $l1
        (call $f45))
      (call $f55
        (local.get $p0)
        (i32.const 13)))
    (local.get $l1))
  (func $f104 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store offset=20
      (local.get $l1)
      (i32.const 0))
    (i32.store offset=28
      (local.get $l1)
      (i32.const 25))
    (i32.store offset=24
      (local.get $l1)
      (i32.const 1048576))
    (local.set $l3
      (i32.load offset=12
        (local.get $p0)))
    (block $B0
      (block $B1
        (block $B2
          (if $I3
            (i32.eqz
              (i32.load8_u offset=8
                (local.get $p0)))
            (then
              (local.set $l2
                (call $env.mBufferGetLength
                  (local.tee $l4
                    (i32.load
                      (local.get $p0)))))
              (br_if $B2
                (i32.or
                  (i32.load8_u
                    (i32.const 1059712))
                  (i32.gt_u
                    (local.get $l2)
                    (i32.const 10000))))
              (i32.store
                (i32.const 1049708)
                (local.get $l2))
              (i32.store8
                (i32.const 1059712)
                (i32.const 1))
              (call $f76
                (i32.add
                  (local.get $l1)
                  (i32.const 8))
                (local.get $l2))
              (drop
                (call $f61
                  (local.get $l4)
                  (i32.const 0)
                  (i32.load offset=8
                    (local.get $l1))
                  (i32.load offset=12
                    (local.get $l1))))
              (i32.store8 offset=8
                (local.get $p0)
                (i32.const 1))))
          (br_if $B0
            (i32.gt_u
              (local.tee $l2
                (i32.add
                  (local.get $l3)
                  (i32.const 4)))
              (i32.load
                (i32.const 1049708))))
          (call $f94
            (local.get $l1)
            (local.get $l3)
            (local.get $l2))
          (call $f77
            (i32.add
              (local.get $l1)
              (i32.const 20))
            (i32.const 4)
            (i32.load
              (local.get $l1))
            (i32.load offset=4
              (local.get $l1)))
          (br $B1))
        (i32.store8 offset=8
          (local.get $p0)
          (i32.const 0))
        (br_if $B0
          (call $f61
            (local.get $l4)
            (local.get $l3)
            (i32.add
              (local.get $l1)
              (i32.const 20))
            (i32.const 4)))
        (local.set $l2
          (i32.add
            (local.get $l3)
            (i32.const 4))))
      (i32.store offset=12
        (local.get $p0)
        (local.get $l2))
      (call $f98
        (i32.add
          (local.get $l1)
          (i32.const 20))
        (i32.const 4))
      (global.set $g0
        (i32.add
          (local.get $l1)
          (i32.const 32)))
      (return
        (i32.wrap_i64)))
    (call $f105
      (i32.add
        (local.get $l1)
        (i32.const 24))
      (i32.const 1049022)
      (i32.const 15))
    (unreachable))
  (func $f105 (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (drop
      (call $env.mBufferAppendBytes
        (local.tee $p0
          (call $f55
            (i32.load
              (local.get $p0))
            (i32.load offset=4
              (local.get $p0))))
        (local.get $p1)
        (local.get $p2)))
    (call $env.managedSignalError
      (local.get $p0))
    (unreachable))
  (func $f106 (type $t15) (param $p0 i32) (param $p1 i64) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i64)
    (i64.store align=1
      (local.get $p3)
      (local.tee $l8
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
                (i64.const 56)))))))
    (block $B0
      (block $B1
        (i32.store offset=4
          (local.get $p0)
          (block $B2 (result i32)
            (if $I3
              (i64.eqz
                (local.get $p1))
              (then
                (local.set $p3
                  (i32.const 1049432))
                (br $B2
                  (i32.const 0))))
            (if $I4
              (i32.eqz
                (select
                  (local.get $p2)
                  (i32.const 0)
                  (i64.eq
                    (local.get $p1)
                    (i64.const -1))))
              (then
                (local.set $l6
                  (i32.and
                    (i32.sub
                      (i32.const 0)
                      (local.tee $l5
                        (i32.and
                          (local.get $p2)
                          (i32.wrap_i64
                            (i64.shr_u
                              (i64.and
                                (local.get $l8)
                                (i64.const 128))
                              (i64.const 7))))))
                    (i32.const 255)))
                (loop $L5
                  (br_if $B1
                    (i32.eq
                      (local.get $l4)
                      (i32.const 8)))
                  (if $I6
                    (i32.ne
                      (local.get $l6)
                      (local.tee $l7
                        (i32.load8_u
                          (i32.add
                            (local.get $p3)
                            (local.get $l4)))))
                    (then
                      (br_if $B0
                        (i32.ge_u
                          (i32.sub
                            (local.get $l4)
                            (local.tee $p2
                              (i32.and
                                (local.get $p2)
                                (i32.ne
                                  (i32.shr_u
                                    (local.get $l7)
                                    (i32.const 7))
                                  (local.get $l5)))))
                          (i32.const 9)))
                      (local.set $p3
                        (i32.add
                          (i32.add
                            (local.get $p3)
                            (local.tee $p2
                              (i32.sub
                                (i32.const 0)
                                (local.get $p2))))
                          (local.get $l4)))
                      (br $B2
                        (i32.sub
                          (i32.const 8)
                          (i32.add
                            (local.get $p2)
                            (local.get $l4)))))
                    (else
                      (local.set $l4
                        (i32.add
                          (local.get $l4)
                          (i32.const 1)))
                      (br $L5)))
                  (unreachable))
                (unreachable)))
            (local.set $p3
              (i32.add
                (local.get $p3)
                (i32.const 7)))
            (i32.const 1)))
        (i32.store
          (local.get $p0)
          (local.get $p3))
        (return))
      (call $f121)
      (unreachable))
    (call $f123)
    (unreachable))
  (func $f107 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (local.set $l2
      (call $f104
        (local.get $p0)))
    (i32.store offset=12
      (local.get $l1)
      (i32.const 25))
    (i32.store offset=8
      (local.get $l1)
      (i32.const 1048576))
    (local.set $l3
      (i32.load offset=12
        (local.get $p0)))
    (local.set $l4
      (call $env.mBufferNew))
    (if $I0
      (call $env.mBufferCopyByteSlice
        (i32.load
          (local.get $p0))
        (local.get $l3)
        (local.get $l2)
        (local.get $l4))
      (then
        (call $f105
          (i32.add
            (local.get $l1)
            (i32.const 8))
          (i32.const 1049022)
          (i32.const 15))
        (unreachable)))
    (i32.store offset=12
      (local.get $p0)
      (i32.add
        (local.get $l2)
        (local.get $l3)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 16)))
    (local.get $l4))
  (func $f108 (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f38
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (local.get $p1)
      (local.get $p2)
      (i32.const 1049712)
      (i32.const 10000))
    (local.set $p1
      (i32.load offset=12
        (local.get $l3)))
    (i32.store
      (local.get $p0)
      (i32.load offset=8
        (local.get $l3)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p1))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $f109 (type $t3) (result i32)
    (i32.xor
      (call $f95
        (call $f55
          (i32.const 1049413)
          (i32.const 19)))
      (i32.const 1)))
  (func $f110 (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (call $f102
      (local.tee $l3
        (call $f103
          (i32.const 1049369)))
      (local.get $p0))
    (drop
      (call $f45))
    (call $f71
      (local.get $l3)
      (call $f40
        (local.get $p1)))
    (call $env.managedWriteLog
      (local.get $l3)
      (call $f101
        (local.get $p2))))
  (func $f111 (type $t3) (result i32)
    (call $f55
      (i32.const 1049395)
      (i32.const 18)))
  (func $f112 (type $t4) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f55
      (i32.const 1049413)
      (i32.const 19))
    (i64.store offset=8
      (local.get $l1)
      (i64.const 0))
    (call $f106
      (local.get $l1)
      (i64.extend_i32_u
        (local.get $p0))
      (i32.const 1)
      (i32.add
        (local.get $l1)
        (i32.const 8)))
    (call $f55
      (i32.load
        (local.get $l1))
      (i32.load offset=4
        (local.get $l1)))
    (drop
      (call $env.mBufferStorageStore))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 16))))
  (func $init (export "init") (type $t1)
    (call $env.checkNoPayment)
    (call $f62
      (i32.const 0)))
  (func $callBack (export "callBack") (type $t1)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 96))))
    (i32.store offset=88
      (local.get $l0)
      (local.tee $l1
        (call $f96
          (local.tee $l4
            (call $f75)))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (call $f84
                (local.get $l1)))
            (local.set $l1
              (call $f40
                (i32.add
                  (local.get $l0)
                  (i32.const 88))))
            (i32.store offset=60
              (local.get $l0)
              (i32.const 25))
            (i32.store offset=56
              (local.get $l0)
              (i32.const 1048576))
            (i32.store offset=32
              (local.get $l0)
              (local.tee $l2
                (call $env.mBufferGetLength
                  (local.get $l1))))
            (i32.store offset=28
              (local.get $l0)
              (i32.const 0))
            (i32.store8 offset=24
              (local.get $l0)
              (i32.const 0))
            (i32.store offset=20
              (local.get $l0)
              (local.get $l2))
            (i32.store offset=16
              (local.get $l0)
              (local.get $l1))
            (local.set $l3
              (call $f107
                (i32.add
                  (local.get $l0)
                  (i32.const 16))))
            (local.set $l1
              (call $f104
                (i32.add
                  (local.get $l0)
                  (i32.const 16))))
            (local.set $l2
              (call $f45))
            (loop $L4
              (if $I5
                (local.get $l1)
                (then
                  (call $f71
                    (local.get $l2)
                    (call $f107
                      (i32.add
                        (local.get $l0)
                        (i32.const 16))))
                  (local.set $l1
                    (i32.add
                      (local.get $l1)
                      (i32.const -1)))
                  (br $L4))))
            (br_if $B0
              (i32.ne
                (i32.load offset=32
                  (local.get $l0))
                (i32.load offset=28
                  (local.get $l0))))
            (if $I6
              (i32.load8_u offset=24
                (local.get $l0))
              (then
                (i32.store
                  (i32.const 1049708)
                  (i32.const 0))
                (i32.store8
                  (i32.const 1059712)
                  (i32.const 0))))
            (drop
              (call $env.mBufferSetBytes
                (i32.const -20)
                (i32.const 0)
                (i32.const 0)))
            (drop
              (call $env.mBufferStorageStore
                (local.get $l4)
                (i32.const -20)))
            (i64.store
              (local.tee $l4
                (i32.add
                  (local.get $l0)
                  (i32.const 80)))
              (i64.const 0))
            (i64.store
              (local.tee $l5
                (i32.add
                  (local.get $l0)
                  (i32.const 72)))
              (i64.const 0))
            (i64.store
              (local.tee $l6
                (i32.sub
                  (local.get $l0)
                  (i32.const -64)))
              (i64.const 0))
            (i64.store offset=56
              (local.get $l0)
              (i64.const 0))
            (call $f97
              (i32.add
                (local.get $l0)
                (i32.const 8))
              (i32.add
                (local.get $l0)
                (i32.const 56))
              (i32.const 32)
              (local.tee $l1
                (call $env.mBufferGetLength
                  (local.get $l3))))
            (drop
              (call $f61
                (local.get $l3)
                (i32.const 0)
                (i32.load offset=8
                  (local.get $l0))
                (i32.load offset=12
                  (local.get $l0))))
            (i64.store align=4
              (i32.add
                (local.get $l0)
                (i32.const 44))
              (i64.load
                (local.get $l4)))
            (i64.store align=4
              (i32.add
                (local.get $l0)
                (i32.const 36))
              (i64.load
                (local.get $l5)))
            (i64.store align=4
              (i32.add
                (local.get $l0)
                (i32.const 28))
              (i64.load
                (local.get $l6)))
            (i64.store offset=20 align=4
              (local.get $l0)
              (i64.load offset=56
                (local.get $l0)))
            (br_if $B3
              (i32.eqz
                (local.get $l1)))
            (br_if $B1
              (i32.ne
                (local.get $l1)
                (i32.const 19)))
            (br_if $B1
              (call $f126
                (i32.or
                  (i32.add
                    (local.get $l0)
                    (i32.const 16))
                  (i32.const 4))))
            (call $f63)
            (if $I7
              (i32.lt_s
                (i32.load
                  (i32.const 1059716))
                (i32.const 0))
              (then
                (call $env.signalError
                  (i32.const 1048760)
                  (i32.const 17))
                (unreachable)))
            (i32.store offset=88
              (local.get $l0)
              (i32.const 0))
            (call $f57
              (i32.add
                (local.get $l0)
                (i32.const 56))
              (i32.add
                (local.get $l0)
                (i32.const 88)))
            (if $I8
              (i32.gt_s
                (i32.load
                  (i32.const 1059716))
                (i32.load offset=88
                  (local.get $l0)))
              (then
                (call $env.signalError
                  (i32.const 1048777)
                  (i32.const 18))
                (unreachable)))
            (local.set $l3
              (i32.load
                (i32.sub
                  (local.get $l0)
                  (i32.const -64))))
            (i32.load offset=56
              (local.get $l0))
            (local.set $l1
              (i32.load offset=60
                (local.get $l0)))
            (local.set $l5
              (call $f79
                (local.get $l2)))
            (call $f63)
            (i32.store offset=64
              (local.get $l0)
              (i32.const 0))
            (i32.store offset=60
              (local.get $l0)
              (local.get $l5))
            (i32.store offset=56
              (local.get $l0)
              (local.get $l2))
            (local.set $l2
              (call $f60
                (i32.add
                  (local.get $l0)
                  (i32.const 56))))
            (if $I9
              (i32.lt_u
                (i32.load offset=64
                  (local.get $l0))
                (i32.load offset=60
                  (local.get $l0)))
              (then
                (call $env.signalError
                  (i32.const 1048777)
                  (i32.const 18))
                (unreachable)))
            (i32.store offset=52
              (local.get $l0)
              (local.get $l2))
            (if $I10
              (i32.eqz)
              (then
                (i32.store offset=56
                  (local.get $l0)
                  (local.get $l1))
                (local.set $l3
                  (call $f47))
                (call $f102
                  (local.tee $l2
                    (call $f103
                      (i32.const 1049382)))
                  (i32.add
                    (local.get $l0)
                    (i32.const 52)))
                (drop
                  (call $f45))
                (call $f71
                  (local.get $l2)
                  (call $f40
                    (i32.add
                      (local.get $l0)
                      (i32.const 56))))
                (call $env.managedWriteLog
                  (local.get $l2)
                  (call $f101
                    (local.get $l3)))
                (drop
                  (call $env.mBufferStorageStore
                    (call $f111)
                    (local.get $l1)))
                (br $B3)))
            (i32.store offset=92
              (local.get $l0)
              (local.get $l3))
            (i32.store offset=88
              (local.get $l0)
              (local.get $l1))
            (block $B11 (result i32)
              (block $B12
                (block $B13
                  (block $B14
                    (br_table $B12 $B13 $B14
                      (call $f83
                        (local.tee $l1
                          (call $f53)))))
                  (call $env.signalError
                    (i32.const 1048663)
                    (i32.const 34))
                  (unreachable))
                (call $f88
                  (i32.add
                    (local.get $l0)
                    (i32.const 56))
                  (local.get $l1))
                (br_if $B2
                  (i64.eqz
                    (i64.load offset=56
                      (local.get $l0))))
                (if $I15
                  (i64.eqz
                    (i64.load offset=64
                      (local.get $l0)))
                  (then
                    (local.set $l1
                      (i32.load
                        (i32.add
                          (local.get $l0)
                          (i32.const 76))))
                    (br $B11
                      (i32.load
                        (i32.add
                          (local.get $l0)
                          (i32.const 72))))))
                (call $env.signalError
                  (i32.const 1049432)
                  (i32.const 28))
                (unreachable))
              (local.set $l1
                (call $f52))
              (i32.const 2147483646))
            (call $f102
              (local.tee $l4
                (call $f103
                  (i32.const 1049356)))
              (i32.add
                (local.get $l0)
                (i32.const 52)))
            (drop
              (call $f45))
            (call $env.managedWriteLog
              (local.get $l4)
              (call $f40
                (i32.or
                  (i32.add
                    (local.get $l0)
                    (i32.const 88))
                  (i32.const 4))))
            (i32.const 2147483646)
            (br_if $B3
              (i32.ne))
            (br_if $B3
              (i32.ne
                (i32.and
                  (call $f90
                    (local.get $l1))
                  (i32.const 255))
                (i32.const 1)))
            (call $f43
              (local.get $l2)
              (local.get $l1)))
          (global.set $g0
            (i32.add
              (local.get $l0)
              (i32.const 96)))
          (return))
        (call $env.signalError
          (i32.const 1049037)
          (i32.const 29))
        (unreachable))
      (call $env.signalError
        (i32.const 1049302)
        (i32.const 54))
      (unreachable))
    (call $f105
      (i32.add
        (local.get $l0)
        (i32.const 56))
      (i32.const 1049008)
      (i32.const 14))
    (unreachable))
  (func $isPaused (export "isPaused") (type $t1)
    (call $env.checkNoPayment)
    (call $f62
      (i32.const 0))
    (call $env.smallIntFinishSigned
      (i64.extend_i32_u
        (call $f95
          (call $f55
            (i32.const 1049413)
            (i32.const 19))))))
  (func $issueWrappedEgld (export "issueWrappedEgld") (type $t1)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 112))))
    (call $f56)
    (call $f51)
    (call $f62
      (i32.const 2))
    (local.set $l1
      (call $f59
        (i32.const 0)))
    (i32.store offset=16
      (local.get $l0)
      (call $f59
        (i32.const 1)))
    (i32.store offset=12
      (local.get $l0)
      (local.get $l1))
    (if $I0
      (call $f100
        (call $f111))
      (then
        (local.set $l1
          (call $f52))
        (i32.store offset=20
          (local.get $l0)
          (call $f49))
        (call $f110
          (i32.add
            (local.get $l0)
            (i32.const 20))
          (i32.add
            (local.get $l0)
            (i32.const 16))
          (local.tee $l2
            (call $f47)))
        (i64.store offset=28 align=4
          (local.get $l0)
          (i64.const 72340168543043584))
        (i32.store offset=24
          (local.get $l0)
          (i32.const 18))
        (call $f66
          (i32.add
            (local.get $l0)
            (i32.const 56))
          (local.get $l1)
          (i32.add
            (local.get $l0)
            (i32.const 12))
          (i32.add
            (local.get $l0)
            (i32.const 16))
          (local.get $l2)
          (i32.add
            (local.get $l0)
            (i32.const 24)))
        (call $f82
          (i32.add
            (local.get $l0)
            (i32.const 24))
          (i32.add
            (local.get $l0)
            (i32.const 56)))
        (local.set $l1
          (call $f55
            (i32.const 1049271)
            (i32.const 19)))
        (call $f69
          (local.tee $l2
            (call $f45))
          (i32.add
            (local.get $l0)
            (i32.const 20)))
        (i32.store offset=4
          (local.get $l0)
          (local.get $l2))
        (i32.store
          (local.get $l0)
          (local.get $l1))
        (i64.store align=4
          (i32.add
            (local.get $l0)
            (i32.const 76))
          (i64.load
            (local.get $l0)))
        (i32.store offset=72
          (local.get $l0)
          (i32.const 1))
        (i64.store offset=56
          (local.get $l0)
          (i64.load offset=24
            (local.get $l0)))
        (i64.store offset=64
          (local.get $l0)
          (i64.load offset=32
            (local.get $l0)))
        (call $f74
          (i32.add
            (local.get $l0)
            (i32.const 56)))
        (unreachable)))
    (call $f42
      (i32.const 1049213)
      (i32.const 31))
    (unreachable))
  (func $pause (export "pause") (type $t1)
    (call $env.checkNoPayment)
    (call $f51)
    (call $f62
      (i32.const 0))
    (call $f112
      (i32.const 1)))
  (func $setLocalRoles (export "setLocalRoles") (type $t1)
    (local $l0 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 112))))
    (call $env.checkNoPayment)
    (call $f51)
    (call $f62
      (i32.const 0))
    (if $I0
      (i32.eqz
        (call $f100
          (call $f111)))
      (then
        (i32.store16 offset=14 align=1
          (local.get $l0)
          (i32.const 513))
        (i32.store offset=104
          (local.get $l0)
          (call $f50))
        (i32.store offset=108
          (local.get $l0)
          (call $f96
            (call $f111)))
        (call $f73
          (i32.add
            (local.get $l0)
            (i32.const 48))
          (i32.add
            (local.get $l0)
            (i32.const 104))
          (i32.add
            (local.get $l0)
            (i32.const 108))
          (i32.add
            (local.get $l0)
            (i32.const 14))
          (i32.add
            (local.get $l0)
            (i32.const 16)))
        (call $f82
          (i32.add
            (local.get $l0)
            (i32.const 16))
          (i32.add
            (local.get $l0)
            (i32.const 48)))
        (call $f74
          (i32.add
            (local.get $l0)
            (i32.const 16)))
        (unreachable)))
    (call $f42
      (i32.const 1049191)
      (i32.const 22))
    (unreachable))
  (func $unpause (export "unpause") (type $t1)
    (call $env.checkNoPayment)
    (call $f51)
    (call $f62
      (i32.const 0))
    (call $f112
      (i32.const 0)))
  (func $unwrapEgld (export "unwrapEgld") (type $t1)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i64)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (call $f62
      (i32.const 0))
    (block $B0
      (block $B1
        (if $I2
          (call $f109)
          (then
            (local.set $l1
              (i32.const 1))
            (block $B3
              (if $I4
                (i32.eq
                  (call $f83
                    (local.tee $l4
                      (call $f53)))
                  (i32.const 1))
                (then
                  (local.set $l5
                    (call $env.mBufferGetLength
                      (local.get $l4)))
                  (local.set $l6
                    (i32.add
                      (local.get $l0)
                      (i32.const 16)))
                  (loop $L5
                    (br_if $B3
                      (i32.gt_u
                        (local.tee $l7
                          (i32.add
                            (local.get $l2)
                            (i32.const 16)))
                        (local.get $l5)))
                    (i64.store
                      (local.get $l6)
                      (i64.const 0))
                    (i64.store offset=8
                      (local.get $l0)
                      (i64.const 0))
                    (drop
                      (call $f61
                        (local.get $l4)
                        (local.get $l2)
                        (i32.add
                          (local.get $l0)
                          (i32.const 8))
                        (i32.const 16)))
                    (i32.store offset=28
                      (local.get $l0)
                      (i32.const 0))
                    (local.get $l1)
                    (local.set $l9
                      (call $f86
                        (i32.add
                          (local.get $l0)
                          (i32.const 8))
                        (i32.add
                          (local.get $l0)
                          (i32.const 28))))
                    (local.set $l10
                      (call $f87
                        (i32.add
                          (local.get $l0)
                          (i32.const 8))
                        (i32.add
                          (local.get $l0)
                          (i32.const 28))))
                    (local.set $l3
                      (call $f86
                        (i32.add
                          (local.get $l0)
                          (i32.const 8))
                        (i32.add
                          (local.get $l0)
                          (i32.const 28))))
                    (local.set $l2
                      (local.get $l7))
                    (local.set $l1
                      (i32.const 0))
                    (br_if $L5))
                  (call $f121)
                  (unreachable)))
              (call $env.signalError
                (i32.const 1048663)
                (i32.const 34))
              (unreachable))
            (if $I6
              (i64.eqz
                (local.get $l10))
              (then
                (i32.store offset=8
                  (local.get $l0)
                  (local.tee $l1
                    (call $f96
                      (call $f111))))
                (br_if $B1
                  (i32.eqz
                    (call $f41
                      (local.get $l9)
                      (local.get $l1))))
                (call $f50)
                (local.set $l1
                  (call $f48))
                (i32.const 1059725)
                (drop
                  (call $env.mBufferGetBytes))
                (call $env.bigIntGetExternalBalance
                  (i32.const 1059725)
                  (local.get $l1))
                (br_if $B0
                  (i32.ge_s
                    (call $env.bigIntCmp
                      (local.get $l3)
                      (local.get $l1))
                    (i32.const 1)))
                (call $f69
                  (local.tee $l1
                    (call $f45))
                  (i32.add
                    (local.get $l0)
                    (i32.const 8)))
                (call $f89
                  (local.get $l1)
                  (local.get $l3))
                (call $f46
                  (call $env.getGasLeft)
                  (call $f55
                    (i32.const 1048601)
                    (i32.const 13))
                  (local.get $l1))
                (call $f43
                  (call $f49)
                  (local.get $l3))
                (global.set $g0
                  (i32.add
                    (local.get $l0)
                    (i32.const 32)))
                (return)))
            (call $env.signalError
              (i32.const 1049432)
              (i32.const 28))
            (unreachable)))
        (call $f42
          (i32.const 1049122)
          (i32.const 18))
        (unreachable))
      (call $f42
        (i32.const 1049140)
        (i32.const 16))
      (unreachable))
    (call $f42
      (i32.const 1049156)
      (i32.const 35))
    (unreachable))
  (func $f121 (type $t1)
    (call $f123)
    (unreachable))
  (func $wrapEgld (export "wrapEgld") (type $t1)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (call $f56)
    (call $f62
      (i32.const 0))
    (block $B0
      (if $I1
        (call $f109)
        (then
          (br_if $B0
            (i32.ne
              (i32.and
                (call $f90
                  (local.tee $l3
                    (call $f52)))
                (i32.const 255))
              (i32.const 1)))
          (i32.store offset=12
            (local.get $l1)
            (call $f96
              (call $f111)))
          (call $f69
            (local.tee $l0
              (call $f45))
            (i32.add
              (local.get $l1)
              (i32.const 12)))
          (call $f89
            (local.get $l0)
            (local.get $l3))
          (call $f46
            (call $env.getGasLeft)
            (call $f55
              (i32.const 1048614)
              (i32.const 13))
            (local.get $l0))
          (call $f49)
          (local.set $l6
            (call $f44))
          (local.set $l7
            (call $f45))
          (local.set $l4
            (call $f45))
          (local.set $l2
            (call $f40
              (i32.add
                (local.get $l1)
                (i32.const 12))))
          (call $f92
            (local.tee $l0
              (call $f48)))
          (call $env.bigIntAdd
            (local.get $l0)
            (local.get $l0)
            (local.get $l3))
          (i64.store offset=20 align=4
            (local.get $l1)
            (i64.const 0))
          (i32.store offset=16
            (local.get $l1)
            (i32.or
              (i32.or
                (i32.and
                  (i32.shl
                    (local.get $l2)
                    (i32.const 8))
                  (i32.const 16711680))
                (i32.shl
                  (local.get $l2)
                  (i32.const 24)))
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $l2)
                    (i32.const 8))
                  (i32.const 65280))
                (i32.shr_u
                  (local.get $l2)
                  (i32.const 24)))))
          (i32.store offset=28
            (local.get $l1)
            (i32.or
              (i32.or
                (i32.and
                  (i32.shl
                    (local.get $l0)
                    (i32.const 8))
                  (i32.const 16711680))
                (i32.shl
                  (local.get $l0)
                  (i32.const 24)))
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $l0)
                    (i32.const 8))
                  (i32.const 65280))
                (i32.shr_u
                  (local.get $l0)
                  (i32.const 24)))))
          (drop
            (call $env.mBufferAppendBytes
              (local.get $l4)
              (i32.add
                (local.get $l1)
                (i32.const 16))
              (i32.const 16)))
          (local.get $l4)
          (i64.const 0)
          (local.get $l6)
          (local.get $l7)
          (drop
            (call $env.managedMultiTransferESDTNFTExecute))
          (global.set $g0
            (i32.add
              (local.get $l1)
              (i32.const 32)))
          (return)))
      (call $f42
        (i32.const 1049122)
        (i32.const 18))
      (unreachable))
    (call $f42
      (i32.const 1049244)
      (i32.const 27))
    (unreachable))
  (func $f123 (type $t1)
    (call $env.signalError
      (i32.const 1049617)
      (i32.const 14))
    (unreachable))
  (func $f124 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (call $f125
      (local.get $p0)
      (local.get $p1)
      (local.get $p2)))
  (func $f125 (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (block $B0
      (if $I1
        (i32.le_u
          (local.get $p2)
          (i32.const 15))
        (then
          (local.set $l3
            (local.get $p0))
          (br $B0)))
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
          (local.set $l3
            (local.get $p0))
          (local.set $l6
            (local.get $p1))
          (loop $L3
            (i32.store8
              (local.get $l3)
              (i32.load8_u
                (local.get $l6)))
            (local.set $l6
              (i32.add
                (local.get $l6)
                (i32.const 1)))
            (br_if $L3
              (i32.lt_u
                (local.tee $l3
                  (i32.add
                    (local.get $l3)
                    (i32.const 1)))
                (local.get $l5))))))
      (local.set $l3
        (i32.add
          (local.get $l5)
          (local.tee $l7
            (i32.and
              (local.tee $l8
                (i32.sub
                  (local.get $p2)
                  (local.get $l4)))
              (i32.const -4)))))
      (block $B4
        (if $I5
          (i32.and
            (local.tee $l4
              (i32.add
                (local.get $p1)
                (local.get $l4)))
            (i32.const 3))
          (then
            (br_if $B4
              (i32.lt_s
                (local.get $l7)
                (i32.const 1)))
            (local.set $l9
              (i32.and
                (local.tee $p2
                  (i32.shl
                    (local.get $l4)
                    (i32.const 3)))
                (i32.const 24)))
            (local.set $p1
              (i32.add
                (local.tee $l6
                  (i32.and
                    (local.get $l4)
                    (i32.const -4)))
                (i32.const 4)))
            (local.set $p2
              (i32.and
                (i32.sub
                  (i32.const 0)
                  (local.get $p2))
                (i32.const 24)))
            (local.set $l6
              (i32.load
                (local.get $l6)))
            (loop $L6
              (i32.store
                (local.get $l5)
                (i32.or
                  (i32.shr_u
                    (local.get $l6)
                    (local.get $l9))
                  (i32.shl
                    (local.tee $l6
                      (i32.load
                        (local.get $p1)))
                    (local.get $p2))))
              (local.set $p1
                (i32.add
                  (local.get $p1)
                  (i32.const 4)))
              (br_if $L6
                (i32.lt_u
                  (local.tee $l5
                    (i32.add
                      (local.get $l5)
                      (i32.const 4)))
                  (local.get $l3))))
            (br $B4)))
        (br_if $B4
          (i32.lt_s
            (local.get $l7)
            (i32.const 1)))
        (local.set $p1
          (local.get $l4))
        (loop $L7
          (i32.store
            (local.get $l5)
            (i32.load
              (local.get $p1)))
          (local.set $p1
            (i32.add
              (local.get $p1)
              (i32.const 4)))
          (br_if $L7
            (i32.lt_u
              (local.tee $l5
                (i32.add
                  (local.get $l5)
                  (i32.const 4)))
              (local.get $l3)))))
      (local.set $p2
        (i32.and
          (local.get $l8)
          (i32.const 3)))
      (local.set $p1
        (i32.add
          (local.get $l4)
          (local.get $l7))))
    (if $I8
      (local.get $p2)
      (then
        (local.set $p2
          (i32.add
            (local.get $p2)
            (local.get $l3)))
        (loop $L9
          (i32.store8
            (local.get $l3)
            (i32.load8_u
              (local.get $p1)))
          (local.set $p1
            (i32.add
              (local.get $p1)
              (i32.const 1)))
          (br_if $L9
            (i32.lt_u
              (local.tee $l3
                (i32.add
                  (local.get $l3)
                  (i32.const 1)))
              (local.get $p2))))))
    (local.get $p0))
  (func $f126 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (local.set $l2
      (i32.const 19))
    (local.set $l1
      (i32.const 1049271))
    (block $B0
      (loop $L1
        (if $I2
          (i32.eq
            (local.tee $l3
              (i32.load8_u
                (local.get $p0)))
            (local.tee $l4
              (i32.load8_u
                (local.get $l1))))
          (then
            (local.set $p0
              (i32.add
                (local.get $p0)
                (i32.const 1)))
            (local.set $l1
              (i32.add
                (local.get $l1)
                (i32.const 1)))
            (br_if $L1
              (local.tee $l2
                (i32.add
                  (local.get $l2)
                  (i32.const -1))))
            (br $B0))))
      (local.set $l5
        (i32.sub
          (local.get $l3)
          (local.get $l4))))
    (local.get $l5))
  (memory $memory (export "memory") 17)
  (global $g0 (mut i32) (i32.const 1048576))
  (global $__data_end (export "__data_end") i32 (i32.const 1059757))
  (global $__heap_base (export "__heap_base") i32 (i32.const 1059760))
  (data $d0 (i32.const 1048576) "serializer decode error: ESDTLocalBurnESDTLocalMintEndpoint can only be called by ownerincorrect number of ESDT transfersargument decode error (): function does not accept ESDT paymenttoo few argumentstoo many argumentswrong number of argumentssetSpecialRole")
  (data $d1 (i32.const 1048843) "\01")
  (data $d2 (i32.const 1048863) "\02\ff\ffissuecanFreezecanWipecanPausecanMintcanBurncanChangeOwnercanUpgradecanAddSpecialRolesMultiESDTNFTTransferESDTNFTTransferESDTTransferCB_CLOSUREinput too longinput too shortManagedVec index out of rangeinput out of rangestorage decode error: bad array lengthcontract is pausedWrong esdt tokenContract does not have enough fundsMust issue token firstwrapped egld was already issuedPayment must be more than 0esdt_issue_callbackresultcallerno callback function with that name exists in contractissue-failureissue-startedissue-successwrappedEgldTokenIdpause_module:pausedfungible ESDT token expectedtruefalseESDTRoleLocalMintESDTRoleLocalBurnESDTRoleNFTCreateESDTRoleNFTAddQuantityESDTRoleNFTBurnESDTRoleNFTAddURIESDTRoleNFTUpdateAttributesESDTTransferRolepanic occurred\00\00\00\00\00\11\00\00\00\11\00\00\00\11\00\00\00\16\00\00\00\0f\00\00\00\11\00\00\00\1b\00\00\00\10\00\00\00X\03\10\00}\03\10\00\8e\03\10\00\9f\03\10\00\b0\03\10\00\c6\03\10\00\d5\03\10\00\e6\03\10\00\01\04\10")
  (data $d3 (i32.const 1049704) "\9c\ff\ff\ff"))
