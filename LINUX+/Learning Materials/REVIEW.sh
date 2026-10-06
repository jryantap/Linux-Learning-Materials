#!/bin/bash

#- Port 22 — SSH
#- Port 53 — DNS
#- Port 80 — HTTP
#- Port 443 — HTTPS
#Think of the IP address as an office building’s street address and the port as a specific office inside it.

ss tuln # -t — show TCP, -u — show UDP, -l — show listening services, -n — show numerical ports instead of service names

#OutPut:
Netid  State   Local Address:Port
tcp    LISTEN  0.0.0.0:22
tcp    LISTEN  127.0.0.1:631
udp    UNCONN  0.0.0.0:53

# this means 
# 1. ssh is listening on port: 22 
# 2. a service is listen on port: 631 on a local computer
# 3. dns is listening on port: 53 on any interface (bercause of 0.0.0.0)
#
# so tcp  LISTEN  0.0.0.0:443 - means it is listening on HTTPS on any interface

# TCP = reliable delivery, verifies data arrives correctly and in order. 
# UDP = faster, fewer checks, does not confirm if data arrived correcty and in order. 

ss tuln 
Netid  State        Local Address:Port   Peer Address:Port
tcp    ESTAB        192.168.1.25:52140   142.250.80.14:443
udp    UNCONN       192.168.1.25:45672   8.8.8.8:53

# LESSON 7
# testing a specific port with nc - netcat - test whether a TCP port access connections
nc -vz example.com 443
# v verbose output
# z test the port without sending application data
# Output: 
# </bash> Connection to example.com 443 port [tcp/https] succeeded!
# Confirms the following;  
# 1. DNS resolved the hostname.
# 2, The server was reachable.
# 3. A TCP connection to port 443 succeeded.

