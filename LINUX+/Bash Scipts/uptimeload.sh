#! /bin/bash
#get uptime in -p (readable format)
echo "System Uptime: $(uptime -p)"
#use awk -F as delimiters to make readable
echo "Load Average: $(uptime | awk -F 'load average:' '{ print $2}')"
#shows load average over the last 1, 5, and 15 mins for the CPU.

