#!/bin/bash -x
 
parttime=1
fulltime=2
totalsalary=0
emprateperhr=20
numofworkingdays=20

for (( day=1; day<=$numofworkingdays; day++ ))
do
        randomcheck=$((RANDOM%3))
        case $randomcheck in
                            $fulltime )
                             emphrs=8
                            ;;
                            $parttime )
                             emphrs=4
                            ;;
                            *)
                             emphrs=0
                            ;;
 esac
        salary=$(($emphrs*$emprateperhr))
        totalsalary=$(($totalsalary+$salary))
done
