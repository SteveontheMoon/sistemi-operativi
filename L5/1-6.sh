#!/bin/bash

# Trova file piu' grande (in byte) in una data cartella
find ~/Documents/ -type f -print0 | xargs -0 du -sbh | sort -rh | head -1
#find -type f : prendi solamente file, 'h' mostra risultato senza spazi
#args -0 : passiamo agomenti a du
#du -sbh : 's' per 'summarize', 'b' [..], 'h' per 'human readable'.
#sort -rh : 'rh' per riordinare in reverso numeri 'umani' passati in input
#head -1 : mostra una sola riga.
