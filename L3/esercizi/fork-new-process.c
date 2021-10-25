#include "stdio.h"
#include "unistd.h"

int main(){
    __pid_t pid;

    puts("Questo programma e' molto triste e effettua creazioni di processi figlio");
    pid = fork();
    int n = 0;
    while (n <= 5){
        if(pid < 0){
            perror("Fork error");
        } else {
            printf("Pid = %d, PPID = %d\n", getpid(), getppid());
        }
        n++;
    }
    return 0;
}