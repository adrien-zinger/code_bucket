asm = a.s b.s c.s d.s
out = a.out b.out c.out d.out

build: $(asm) $(out) spin_lock.out spin_lock.s

$(asm): %.s: %.c
	gcc -S $? -o $@

$(out): %.out: %.c
	gcc $? -o $@

clean:
	rm *.out
	rm *.s

spin_lock.out: spin_lock.c
	gcc spin_lock.c -o spin_lock.out

spin_lock.s: spin_lock.c
	gcc -S spin_lock.c -o spin_lock.s