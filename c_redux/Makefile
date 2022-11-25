reduc: main.c reduc.c reduc.h
	gcc -g main.c reduc.c -h reduc.h -o reduc

static_states: static_states.c reduc.c reduc.h
	gcc -g static_states.c reduc.c -h reduc.h -o static_states

valgrind: reduc
	valgrind --leak-check=full ./reduc