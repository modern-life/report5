#!/bin/bash


if  [  "$1" = 0 ] ;then
echo "1つ目に入力した文字に問題があります 0の最大公約数はありません"

	elif expr "$1" : "[0-9]*$" >/dev/null ; then  	 
	if  [  "$2" = 0  ] ;then
		echo "2つ目に入力した文字に問題があります 0の最大公約数はありません"
		elif expr "$2" : "[0-9]*$" >/dev/null ;   then
		
		e=$1
	   	if  [ $2 -lt $e ] ;then
  		e=$2

		fi
			while [ $e -ne  0 ] ;do
			x=`expr $1 % $e`
			y=`expr $2 % $e`
			if  [ $x -eq 0 -a $y -eq 0  ] ;then
		echo "$1と$2の最大公約数は$eです"
		break

	fi
	e=`expr $e - 1`
	done
	else 
	echo "2つ目に入力した文字に問題があります 自然数を入れてください"	
	exit 1
	fi	
else
	echo "1つ目に入力した文字に問題があります 自然数を入れてください"
exit 1 
fi
