#!/bin/sh
NUM1=$1
NUM2=$2

if [ $# -ne 2 ]
then
	echo "Invalid Input"
	exit 0
fi

if [ $NUM1 -lt 1 -o $NUM2 -lt 1 ]
then
	echo "Input must be greater than 0"
	exit 0
fi

for idx in $(seq $NUM1)
do
	for idx2 in $(seq $NUM2)
	do
		printf "%d*%d=%d\t" $idx $idx2 $(expr $idx '*' $idx2)
	done
	printf "\n"
done

