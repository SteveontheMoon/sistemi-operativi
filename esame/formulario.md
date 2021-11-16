# Sistemi operativi

## Connesione host remoto
Se dovessero esserci sbatti del tipo: 
`Unable to negotiate with 127.0.0.1 port 10022: no matching host key type found. Their offer: ssh-rsa,ssh-dss`
bisoga connettersi passando ad ssh l'argomento: `-oHostKeyAlgorithms=+ssh-dss` 

## Command and their arguments
tar
```
- c		create
- z		gzip compressio
- f		use file name given
--exclude "(path)"
```

find
```
-type	f for files, d for dir
-name	
-mindepth
-maxdepth
-user
-printf
-exec
-size
```

grep
```
-o	print only match
--binary-files=text		display only human readable text 

```
