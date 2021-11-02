#!/bin/bash

# Cerca file nella cartella /bin/, ritorna Trovato o non Trovato in base al tipo di output.
for a in dog, fish, cat; do if [ -f /bin/$a ]; then echo Trovato; else echo Non trovato; fi; done
