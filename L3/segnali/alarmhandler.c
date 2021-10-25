#include<stdio.h>
#include<signal.h>
 
void alarmHandler()
{
	printf("Gestione alarmhandler!\n");
	alarm(3); /* resetta il timer a 3 secondi */
}
 
main() { 
	signal(SIGALRM, alarmHandler);
	alarm(3);
	while(1){}
}
