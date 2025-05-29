#! /bin/bash
#get uptime in -p (readable format)
echo "System Uptime: $(uptime -p)"
#use awk -F as delimiters to make readable
echo "Load Average: $(uptime | awk -F 'load average:' '{ print $2}')"
