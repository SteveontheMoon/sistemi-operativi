#!/bin/bash

if [[ $# == 1 ]]
then
	kill $(ps -o pid,fname | grep $1)
else
	echo 'No process name given'
fi
