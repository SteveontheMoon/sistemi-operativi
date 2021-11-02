#!/bin/bash

parola=superkalifragilististocazzo
sequenza_lettere=kali

if echo "$parola" | grep -q "$sequenza_lettere" 
then
	echo "$sequenza_lettere presente in $parola"
else
	echo "$sequenza_lettere non presente in $parola"
fi
