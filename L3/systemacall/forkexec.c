#include <stdio.h>
#include <unistd.h>

int main(){
	printf("Provo ad eseguire il comando ls\n");
	execl("/bin/ls","ls","-l",NULL);

}
