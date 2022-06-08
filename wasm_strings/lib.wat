(module
  (import "imports" "log" (func $log (param i32)))
  (memory (export "memory") 1 200)
  (data (i32.const 0) " world")
  (export "concat" (func $concat))
  (func $concat (param $s i32) (result i32)
	(local $res i32)
	(local $pos i32)
	local.get $s
	local.set $res

	(loop $to_zi_end
	      local.get $s
	      i32.load8_u
	      i32.const 0
	      i32.gt_u

	      (if (result i32)
		(then
		  local.get $s
		  i32.const 1
		  i32.add
		  local.set $s ;; optimizable with a tee
		  i32.const 0
		  ) (else i32.const 1)
		)
	      i32.eqz
	      br_if $to_zi_end
	      )

	local.get $s
	call $log

	local.get $s
	call $log


	i32.const 0
	local.set $pos
	(loop $dump
	      local.get $s
	      local.get $pos
	      i32.load8_u
	      i32.store8

	      i32.const 1
	      local.get $s
	      i32.add
	      local.set $s
	      i32.const 1
	      local.get $pos
	      i32.add
	      local.tee $pos
	      i32.load8_u
	      i32.const 0
	      i32.gt_u

	      br_if $dump
	      )
	local.get $res
	)
  )
