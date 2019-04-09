#!/bin/bash
if [ -n /home/tunnel/.ssh/key ]
then
	ssh-keygen -P "" -f /home/tunnel/.ssh/key
else
	echo "Found preexisting key" 
fi

