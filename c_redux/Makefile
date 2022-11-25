reagir: main.c lib/reagir.c lib/reagir.h
	gcc -g main.c lib/reagir.c -h lib/reagir.h -o reagir

static_states: static_states.c lib/reagir.c lib/reagir.h
	gcc -g static_states.c lib/reagir.c -h lib/reagir.h -o static_states

valgrind: reagir
	valgrind --leak-check=full ./reagir