all: main.out static_states.out fsm.out be.out

main.out: main.c lib/reagir.c lib/reagir.h
	gcc -g main.c lib/reagir.c -h lib/reagir.h -o main.out

static_states.out: static_states.c lib/reagir.c lib/reagir.h
	gcc -g static_states.c lib/reagir.c -h lib/reagir.h -o static_states.out

fsm.out: fsm.c lib/reagir.c lib/reagir.h lib/scanner.h
	gcc -g fsm.c lib/reagir.c -h lib/reagir.h lib/scanner.h -o fsm.out

be.out: be.c lib/reagir.c lib/reagir.h lib/scanner.h
	gcc -g be.c lib/reagir.c -h lib/reagir.h lib/scanner.h -o be.out

valgrind: main.out
	valgrind --leak-check=full ./main.out