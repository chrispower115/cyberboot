#!/bin/bash

# Created by: Chris Power
# Date: March 14 2024

# Output the system info for this Linux shell.

echo -e "
System info:
==================================================================
Date:$(date)
Kernel name:$(uname -s)
Kernel release:$(uname -v)
Machine,processor,hardware type:$(uname-m)
Operating system:$(uname -o)
IP address(eth0):$(ip addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
Hostname:$HOSTNAME 
DNS servers:\n$(cat /etc/resolv.conf | grep 'nameserver ')
==================================================================
Memory info:$(free -h)
\n
Disk info:\n$(df -h | head -2)

CPU:\n$(lscpu | grep 'Model name:')
==================================================================
Who's logged in:\n$(who -a)
==================================================================
"

