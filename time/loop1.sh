#!/bin/sh

while true
do
	x=$((x+1))
	#pwd > /dev/null #buildin
	/bin/pwd > /dev/null  #form bin

	if [ $x -gt 50000 ]
	then
		exit
	fi

done



#execution commond
#strace system  calls 
#ltrace librarie calls
#ptrace process
#strace is to caputres all system call made by process
#strace -c -o s.out loop1.sh




#/bin/pwd
#head -4 s.out
#% time     seconds  usecs/call     calls    errors syscall
#------ ----------- ----------- --------- --------- ----------------
# 53.82    3.420837          34    100002     50001 wait4
# 27.41    1.742034          34     50001           clone

#pwd
#% time     seconds  usecs/call     calls    errors syscall
#------ ----------- ----------- --------- --------- ----------------
# 26.81    0.180715           1    150006           close
# 23.39    0.157632           3     50004           openat


#/bin/pwd will take more time then pwd(which is shell builtin command)
