#!/bin/bash

if cmp a b &> /dev/null    # sopprime l'output
  then echo "I file a e b sono identici"
else
  echo "I file a e b sono diversi"
fi
