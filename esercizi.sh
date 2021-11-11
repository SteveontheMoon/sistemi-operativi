#trovare tutti gli ip da /etc
for file in $(find /etc -type f); do cat $file | grep -Eo '[0-9]{1-3}\.[0-9]{1-3}\.[0-9]{1-3}\.[0-9]{1-3}');
