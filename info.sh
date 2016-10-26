#!/bin/bash

clear
echo
echo "Kernel $(uname -r)"
echo

##  df -h
df -h | head -1 &&  df -h | tail -n +2 |  sort -n -k1   
echo
free -m

#exit 
echo
#echo "systemd-analyze $(systemd-analyze)"
#echo

exit
echo "systemd-analyze blame"
#systemd-analyze blame | head -10
