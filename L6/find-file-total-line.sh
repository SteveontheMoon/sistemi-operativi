#!/bin/bash

find /usr/include -type f -name '*.h' | xargs wc -l | sort -nr | sed 's/\s\+/ /g'
# 's/\s\+/'	sostituisci uno o piu' spazi
# ' /g' sostituisce con un solo spazio
# per rimuovere la riga total possono aggiungere: grep -v 'total'
