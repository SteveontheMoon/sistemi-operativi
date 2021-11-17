#!/bin/bash
# echo $XDG_SESSION_TYPE
loginctl show-session $(loginctl | head -2 | tail  -1 | awk '{print $1}') -p Type
