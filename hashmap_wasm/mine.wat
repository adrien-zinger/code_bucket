(module
 (memory $0 1)
 (global $heap_head (mut i32) (i32.const 32))
 (export "get" (func $get))
 (export "insert" (func $insert))
 (export "new_map" (func $new_map))
 (export "memory" (memory $0))
 ;; simpliest hashing method ever
 (func $internal/modulo (param $0 i32) (result i32)
	local.get $0
	i32.const 255
	i32.rem_u
 )
 ;; simpliest malloc ever
 (func $internal/malloc (param $0 i32) (result i32)
        (local $ret i32)
        global.get $heap_head
	local.tee $ret
	local.get $0
	i32.add
	global.set $heap_head
	local.get $ret
 )
 (func $internal/get_key_addr (param $map i32) (param $key i32) (result i32)
        ;; return the address of the key in the map
	;; you need to load the content to get the
	;; final linked-list address
 	(local $0 i32) (local $key_addr i32)
	local.get $map
	local.get $key
	call $internal/modulo
	i32.const 32
	i32.mul
	i32.add ;; go to key address
 )
 (func $new_map (result i32)
        i32.const 8160 ;; 255*32
        call $internal/malloc
 )
 (func $internal/find (param $addr i32) (param $key i32) (result i32)
	local.get $addr
	i32.eqz
	(if (then
	   i32.const 0
	   return
	))
	local.get $addr
	i32.load ;; load key, require kv addr on the stack
	local.get $key
	i32.eq
	(if (result i32)
	  (then local.get $addr)
	  (else ;; go to next addr and repeat
	    local.get $addr
	    i32.const 64
	    i32.add
	    i32.load
	    local.get $key
	    call $internal/find
	  )
	)
 )
 (func $internal/get_item_addr (param $map i32) (param $key i32) (result i32)
        local.get $map
	local.get $key
	call $internal/get_key_addr ;; find index in map
	i32.load ;; load key-value addr in linked list
	local.get $key ;; add key on stack
	call $internal/find
 )
 (func $get (param $map i32) (param $key i32) (result i32)
        local.get $map
	local.get $key
	call $internal/get_item_addr
	i32.const 32
	i32.add
	i32.load
 )
 (func $internal/new_item (param $key i32) (param $val i32) (param $head i32) (result i32)
        (local $base i32)
        i32.const 96
	call $internal/malloc
	local.tee $base
	local.get $key
	i32.store
	local.get $base
	i32.const 32
	i32.add
	local.get $val
	i32.store
	local.get $base
	i32.const 64
	i32.add
	local.get $head
	i32.store
	local.get $base
 )
 (func $insert (param $map i32) (param $key i32) (param $val i32)
        (local $addr i32)
        (local $item i32)
	local.get $map
	local.get $key
	call $internal/get_item_addr
	local.tee $addr
	i32.eqz
	(if
  	  (then
	    local.get $map
	    local.get $key
	    call $internal/get_key_addr;; addr in the map
	    local.tee $addr

	    local.get $key
	    local.get $val
	    local.get $addr
	    i32.load
	    call $internal/new_item ;; i in map, item addr
	    i32.store
	  )
	  (else
	    local.get $addr
	    i32.const 32
	    i32.add
	    local.get $val
	    i32.store
	  )
	)
 )
)
