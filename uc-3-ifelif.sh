#!/bin/bash -x

fulltime=1
parttime=2
randomcheck=$((RANDOM%3))
emprateperhr=20

if [ $parttime -eq $randomcheck ]
then
      emphrs=4
elif [ $fulltime -eq $randomcheck ]
then
      emphrs=8
else 
      emphrs=0
fi

salary=$(($emphrs*$emprateperhr))
