#!/bin/bash
#Check if script was run as root. Exit if false
if [ $UID -ne 0 ]
then
	echo "Please run this script with sudo."
	exit
fi

# Define variables
output=$HOME/research/sys_info.txt
ip=$(ip addr | head -9 | tail -1)
execs=$(sudo find / -type f -perm 777)
files=(
	'/etc/passwd'
	'/etc/shadow'
)
#Check #Check for document in research directory.  Create if needed
if [ -! -d $HOME/research ]
then
mkdir $HOME/research
fi

#Check for output files in research directory.  Create if needed.
if [ -f $output ]
then
	rm $output
fi

#sys_info.txt output
echo "A Quick System Audit Script" >> $output
date >> $output
echo "" >> $output
echo "Machine Type Info:" >> $output
echo -e "$MACHTYPE \n" >> $output
echo -e "Uname info: $(uname -a) \n" >> $output
echo -e "IP Info:" >> $output
echo -e "$(ip addr | head -9 | tail -1)" >> $output
echo "Hostname: $(hostname -s)" >> $output
echo "DNS Servers: " >> $output
cat /etc/resolv.conf >> $output
echo "Memory Info:" >> $output
free >> $output
#Display CPU usage
echo -e "\nCPU Info:" >> $output
lscpu | grep CPU >> $output
#Display Disk usage
echo -e "\nDisk Usage:" >> $output
df -H | head -2 >> $output
echo -e "\nWho is loggied in: \n $(who -a) \n" >> $output
#Create Directory for output
#mkdir ~/research 2> /dev/null >> $output
if [ ! -d $HOME/research ]
	then
	mkdir $HOME/research
fi
echo -e "\nexec Files:" >> $output
echo -e $execs >> $output
echo -e "\nTop 10 Processes" >> $output
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $output
echo -e "\nFile Permissions" >> $output
for file in ${files[@]}
do
ls -l $file >> $output
done
