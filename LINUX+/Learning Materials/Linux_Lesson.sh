# grep - search for matching patterns 
</bash> 
grep -i "Error" server.log # will show only errors, -i non case sensitive

# Practical 
tail -n 100 sever.log | grep -i "Error" # gets 100 last lines, displays only matching lines

# /var/log/auth.log
sudo grep -i "failed password" /var/log/auth.log
# output
#Oct 15 14:22:01 server sshd[1234]: Failed password for user1 from 192.168.1.50
#Oct 15 14:22:08 server sshd[1235]: Failed password for user1 from 192.168.1.50

##############
#!/bin/bash
if ls /etc > /dev/null 2>&1; then
    echo "Directory exists"
else
    echo "Directory not found"
fi

