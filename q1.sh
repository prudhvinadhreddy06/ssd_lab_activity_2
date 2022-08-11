#!/bin/bash

path=$1

middle=$(cat $path | awk 'END {print NR}')

rem=$((middle%2))

if ((rem==1))
then
	((middle/=2))
	((middle++))
else
	((middle/=2))	
fi

sed -n "${middle}p" $path

