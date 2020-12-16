\\\^\#!/bin/bash
output=$HOME/research/sys_info.txt
#echo "A Quick System Audit Script" >> $output 
#date >> $output
#echo "" >> $output
#echo "Machine Type Info:" >> $output
#echo -e "$MACHTYPE \n" >> $output
#echo -e "Uname info: $(uname -a) \n" >> $output
#echo -e "IP Info: $(ip addr | head -9 | tail -1) \n" >> $output
#echo "Hostname: $(hostname -s)" >> $output
#echo "DNS Servers: " >> $output
#cat /etc/resolv.conf >> $output
#echo "Memory Info:" >> $output
#free >> $output
#echo -e "\nCPU Info:" >> $output
#lscpu | grep CPU >> $output
#echo -e "\nDisk Usage:" >> $output
#df -H | head -2 >> $output
#echo -e "\nWho is loggied in: \n $(who -a) \n" >> $output
#Create Directory for output
# mkdir ~/research 2> /dev/null >> $output
#if [ ! -d $HOME/research ]
#        then
#        mkdir $HOME/research
#fi
echo -e "\n777 Files:" >> $output
sudo find / -type f -perm 777 >> $output
#echo -e "\nTop 10 Processes" >> $output
#ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $output
