#!/bin/bash
#du = disk usage:  estimated files space used.
#-a = include both files and directories in the output. 
#-h = display sizes in readable format
#/home = directory to analyze.
#the script lists the 10 largest files or directories under /home, sort by size (largest first)

du -ah /home | sort -rh | head - n10
