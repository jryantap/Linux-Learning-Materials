#!/bin/bash

#-c send 1 packet only instead of continuous ping
# 2>%1 redirect output error
# check if network is reachable. 
ping -c 8.8.8.8 > /dev/null 2>&1
if[$? -eq 0]; then echo "network is up"
else echo "network is down"
fi
