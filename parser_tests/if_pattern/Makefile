if_pattern: if_pattern.c if_pattern.h lex.yy.c
	gcc -h if_pattern.h if_pattern.c lex.yy.c -o if_pattern

run: if_pattern
	./if_pattern

lex.yy.c: if_pattern.l
	flex if_pattern.l

if_pattern.c: if_pattern.y
	bison --graph -d if_pattern.y -o if_pattern.c

clean:
	rm if_pattern.c if_pattern.h lex.yy.c