#!/bin/bash
 
echo "一つ目の数字 "
read a
if expr "$a" : "[0-9]*$" >&/dev/null; then
 
	echo "二つ目の数字"
	read  i
	if expr "$i" : "[0-9]*$" >&/dev/null ;then
	
	while ["$i" -ne 0];

	else 
	echo "NG"	
	fi			
else
echo "NG"
fi
