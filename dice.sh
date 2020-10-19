#! /bin/bash

#Author: Ankita Angane
#Dice Program for review

#declaration

var2=0
counter=0
sum=0
dice1=0
dice2=0
sum=0

while [ $var2 -ne 1 ]
do

dice1=$((RANDOM%6+1))
dice2=$((RANDOM%6+1))

echo "Number occurred are $dice1 and $dice2"

if [ $dice1 -ne 6 -a $dice2 -ne 6 ]
then
	sum=$((sum+dice1+dice2))
	counter=$((counter+1))
fi

if [ $dice1 -eq 6 -a $dice2 -eq 6 ]
then
	var2=1
	echo "Sum is " $sum
	echo "Counter is " $counter

	exit
fi

done
