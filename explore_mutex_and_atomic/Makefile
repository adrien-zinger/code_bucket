asm = a.s b.s c.s d.s
out = a.out b.out c.out d.out

build: $(asm) $(out)

$(asm): %.s: %.c
	gcc -S $? -o $@

$(out): %.out: %.c
	gcc $? -o $@

clean:
	rm *.out
	rm *.s