(module
 (type $ta (func (param i32) (result i32)))
 (type $tb (func (param) (result i32)))
 (type $tc (func (param) (result)))

 (func $fac (type $ta)
   (block $bthen (type $tb)
     (block $belse (type $tc)
       (local.get 0)
       (i32.eqz)
       (br_if $belse)

       (local.get 0)
       (local.get 0)
       (i32.const 1)
       (i32.sub)
       (call $fac)
       (i32.mul)
       (return))

     (i32.const 1)))

 (export "fac" (func $fac)))
