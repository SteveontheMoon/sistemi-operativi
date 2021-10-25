#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <stdbool.h>

main(){
    pid_t pid;
    int i;
		 
	    if ( (pid = fork()) < 0 )
		    perror("fork error");   /* stampa la descrizione dell'errore */
	    else if (pid == 0) {
		    while(true){
		    for (i=0;i<100000000;i++){} /* Perche usare sleep quanto puoi avviare un ciclio inutile */
            printf("Figlio: pid = %d, pid del genitore = %d\n",getpid(), getppid());
		    }
	    } else {
		    while(true){
		    for (i=0;i<100000000;i++){}
		    printf("genitore: pid = %d, pid di mio genitore = %d\n",getpid(), getppid());
        }
    }
}
