#!/bin/bash
# Identifica processo con PPID piu' alto

ps -eo uname,pid,ppid,args | sort -nk3 | tail -n1
#   ^ list all process
#	 ^ format output
#				   ^ numerical sort
#				    ^ increasing numerical sorting based on content of column 3
#					       ^ take last line from file tail 
