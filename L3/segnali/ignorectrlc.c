#include<signal.h>
#include<stdio.h>

main() {
	void (*old)(int);
 
	old = signal(SIGINT,SIG_IGN); /* se va a buon fine ritorna il valore precendete del genale */
	printf("Il programma ignora il segnale!\n");
	sleep(5);
 
	signal(SIGINT,old);
	printf("Il programma non ignora il segnale!\n");
	sleep(5);

    /* Il valore di ritorno di "signal" viene usato per reimpostare il gestore originale */
}

