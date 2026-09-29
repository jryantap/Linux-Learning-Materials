#!/bin/bash

#- Port 22 — SSH
#- Port 53 — DNS
#- Port 80 — HTTP
#- Port 443 — HTTPS
#Think of the IP address as an office building’s street address and the port as a specific office inside it.

ss tuln # -t — show TCP, -u — show UDP, -l — show listening services, -n — show numerical ports instead of service names

#OutPut:
#Netid  State   Local Address:Port
#tcp    LISTEN  0.0.0.0:22
#tcp    LISTEN  127.0.0.1:631
#udp    UNCONN  0.0.0.0:53
# this means 
# 1. ssh is listening on port: 22 
# 2. a service is listen on port: 631 on a local computer
# 3. dns is listening on port: 53 on any interface (bercause of 0.0.0.0)
#
# so tcp  LISTEN  0.0.0.0:443 - means it is listening on HTTPS on any interface
