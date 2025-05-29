#!/bin/bash
ping -c 8.8.8.8 > /dev/null 2>&1

if[$? -eq 0]; then echo "network is up"
else echo "network is down"
fi
