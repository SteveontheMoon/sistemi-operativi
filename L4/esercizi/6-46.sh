#!/bin/bash
#Ottenere somma occupazione file in /usr/bin e /var
expr $(sudo du -sb /usr/bin | cut -f1) + $(sudo du -sb /var | cut -f1)
#				^ summarize (totale)
#				 ^ display in bytes
#								   ^ show last line
