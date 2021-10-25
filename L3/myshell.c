#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

/* Simulazione shell, premere CTRL+C per terminare l'eseguzione.*/

int main(){
   int esito;
   char comando[128];

   while(1){
           printf("myshell# ");
           scanf("%s", comando); /*lettura rudimentale: niente argomenti separati*/
			      
           if ((esito=fork()) < 0)
	              perror("Fallimento fork");
           else if (esito == 0) {
	              execlp(comando,comando,NULL); /* NOTA: non gestisce argomenti */
                      perror("Errore esecuzione:");
                      exit(EXIT_FAILURE);
           }
           /* il processo shell torna immediatamente a leggere un altro comando */

   }
}
