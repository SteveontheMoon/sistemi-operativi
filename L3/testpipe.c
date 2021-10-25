#include <stdio.h>
#include <string.h>

main(){
    int fd[2];
 
    pipe(fd); /* crea la pipe */
    if (fork() == 0) {
        char *phrase = "Invia questo messaggio!";
        close(fd[0]);                         /* chiude in lettura */
        write(fd[1],phrase,strlen(phrase)+1); /* invia anche 0x00 */
        close(fd[1]);                         /* chiude in scrittura */
    } else {
        char message[100];
        memset(message,0,100);
        int bytesread;

        close(fd[1]);                         /* chiude in scrittura */
        bytesread = read(fd[0],message,100);
        printf("Lettura dalla pipe %d bytes: '%s' \n",bytesread,message);
        close(fd[0]);                         /* chiude in lettura */
    }
}
