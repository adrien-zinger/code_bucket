all: main.out static_states.out fsm.out

main.out: main.c lib/reagir.c lib/reagir.h
	gcc -g main.c lib/reagir.c -h lib/reagir.h -o main.out

static_states.out: static_states.c lib/reagir.c lib/reagir.h
	gcc -g static_states.c lib/reagir.c -h lib/reagir.h -o static_states.out

fsm.out: fsm.c lib/reagir.c lib/reagir.h
	gcc -g fsm.c lib/reagir.c -h lib/reagir.h -o fsm.out

valgrind: main.out
	valgrind --leak-check=full ./main.out