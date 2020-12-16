 1 #!/bin/bash
 2 output=$HOME/research/sys_info.txt
 3 ip=$(ip addr | head -9 | tail -1)
 4 echo "A Quick System Audit Script" >> $output 
 5 date >> $output
 6 echo "" >> $output
 7 echo "Machine Type Info:" >> $output
 8 echo -e "$MACHTYPE \n" >> $output
 9 echo -e "Uname info: $(uname -a) \n" >> $output
10 echo -e "IP Info: >> $output
11 echo -e "$ip \n" >> $output
12 echo "Hostname: $(hostname -s)" >> $output
13 echo "DNS Servers: " >> $output
14 cat /etc/resolv.conf >> $output
15 echo "Memory Info:" >> $output
16 free >> $output
17 echo -e "\nCPU Info:" >> $output
18 lscpu | grep CPU >> $output
19 echo -e "\nDisk Usage:" >> $output
20 df -H | head -2 >> $output
21 echo -e "\nWho is loggied in: \n $(who -a) \n" >> $output
22 #Create Directory for output
23 # mkdir ~/research 2> /dev/null >> $output
24 if [ ! -d $HOME/research ]
25         then
26         mkdir $HOME/research
27 fi
28 echo -e "\n777 Files:" >> $output
