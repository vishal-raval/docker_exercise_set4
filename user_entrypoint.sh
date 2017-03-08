#!/bin/bash
# Script to add a user to Linux system

if [ $(id -u) -eq 0 ]; then
	read -p "Enter username : " username
	read -p "Enter password : " password
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username exists!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p $pass $username
		[ $? -eq 0 ] && echo "A New User is Created!" || echo "Failed to add a user!"
	fi
else
	echo "Only root may add a user to the system"
	exit 2
fi

cat > output.txt > /home/vishal/Exercise#4 Jenkis/

date

echo "Output.txt is created"
