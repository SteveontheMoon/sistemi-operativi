#!/bin/bash

loginctl show-session $(loginctl | head -2 | tail  -1 | awk '{print $1}') -p Type
# echo $XDG_SESSION_TYPE
