#!/bin/bash
# Ottenere il numero di file dentro /usr/bin e /var. 

# Potremmo fare una cosa del genere dentro queste dir non sono solo regular file
echo "Numero file totali:"
expr $(ls -al /usr/bin | wc -l) + $(ls -al /var | wc -l)
echo "Numero regula file:"
# numero di file filtrando le cartelle
expr $(ls -al /usr/bin | grep -v ^d | wc -l) + $(ls -al /var | grep -v ^d | wc -l)

