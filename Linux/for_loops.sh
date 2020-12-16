#!/bin/bash
# Define Variables
nums=$(echo {0..9})
#states=('Nebraska' 'California' 'Texas' 'Hawaii' 'Washington')
ls_out=$(ls)
execs=$(find /home -type f -perm 777 2> /dev/null)

# Create a loop that looks for 'Hawaii'
#for state in ${states[@]}; 
#do
#if [ $state == 'Hawaii' ]; then
#        echo "Hawaii is the best!"
#else
#        echo "I'm not a fan of Hawaii."
#fi
#done
# Create a loop that prints 3, 5, 7
for num in ${nums[@]}
do
	if [ $num = 3 ] || [ $num = 5] || [ $num = 7 ]
then
	echo $num
fi
done

#Create lsx?
for x in ${ls_out[@]}
do
	echo $x
done

#Create execs listing

for exec in ${execs[@]}
do 
	echo $exec
done
