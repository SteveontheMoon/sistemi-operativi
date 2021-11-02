$!/bin/bash

if [ -f "$nomefile" /$PATH ] ; then
	echo "Il file $nomefile esiste"; cp $nomefile $nomefile.bak
else
	echo "Il file $nomefile non esiste, lo creo"; touch $nomefile
fi; 
echo "Lolloiltrollo"
