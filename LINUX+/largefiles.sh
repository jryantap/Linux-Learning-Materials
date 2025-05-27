#!/bin/bash
#du = disk usage:  estimated files space used.
#-a = include both files and directories in the output. 
#-h = display sizes in readable format
#/home = directory to analyze.
du -ah /home | sort -rh | head - n10
