reduc: main.c reduc.c reduc.h
	gcc -g main.c reduc.c -h reduc.h -o reduc

valgrind: reduc
	valgrind --leak-check=full ./reduc