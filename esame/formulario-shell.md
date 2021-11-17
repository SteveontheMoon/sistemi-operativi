# Sistemi operativi

## Connesione host remoto
Se dovessero esserci sbatti del tipo:
```bash
> Unable to negotiate with 127.0.0.1 port 10022: no matching host key type found. Their offer: ssh-rsa,ssh-dss
```
bisoga passare: 

```bahs
-oHostKeyAlgorithms=+ssh-dss
``` 


## tar
- c		create
- z		gzip compressio
- f		use file name given
--exclude "(path)"
Per archiviare un file in un archivio
```bash
tar -rvf <archivename>.tar <filename>
```


## find
-type	f for files, d for dir
-name	
-mindepth
-maxdepth
-user
-printf0	print NULL at the end of each line
-exec command {} \;
-size


## grep
-i		ingore case
-e ''	match regrex
-c 		only print count of match
-a 		process binary file as text
-r 		recursive
-o		print only match
-E 		set eof to eof-str
--binary-files=text		display only human readable text 


## xargs
-0 		input items are terminated by null char
-I{} command {}		


## cut
-d		specify field delimiter


## tail
-n +NUM 		print all number from NUM line


## head
-n -NUM 		print all but the last NUM line of each file


## sort
-f 		case insensitive
-g		general numer sort
-h		human readable numbers
-r 		field separator
-k		field sorting (can specify number -k3)


## cp
--parents 		copy privilege

## ps
-e 		select all process (-A)
-l		long format
-F		extra full format


# Dissasemblare codice oggett
objdump -d p a.out

# Dissasemblare con gdb
```bash
gdb a.out
> disassemble 
```



