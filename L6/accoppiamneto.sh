  1 #!/bin/bash                                                                                                             
  2 # CONTIAMO NUMERO DI SOTTODIRECTORY TRAMITE PIPE ANONIME (process substitution)                                         
  3 wc -l <(find / -mindepth 1 -maxdepth 1 -type d) <(find /opt -mindepth 1 -maxdepth 1 -type d)                            
  4 # Accopia come stdinput del comando wc, possiamo mettere n input basta specificali con sintassi: <() .
