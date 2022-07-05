#!/bin/bash -x

parttime=1
fulltime=2
maxrateinmonth=100
emprateperhr=20
numofworkingdays=20

totalemphr=0
totalworkingdays=0

function getworkinghrs()
{
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
}

  function getempwage()
{
     echo $(($totalemphr*$emprateperhr))
}

while  [[ $totalemphr -lt $maxrateinmonth &&
             $totalworkingdays -lt $numofworkingdays ]]
do
          ((totalworkingdays++))
           randomcheck=$((RANDOM%3))
           getworkinghrs $randomcheck
           totalemphr=$(($totalemphr+$emphrs))
           dailywages["$totalworkingdays"]=$(($emphrs*$emprateperhr))
done

totalsalary="$( getempwage $totalemphr )"
echo ${dailywages[@]}
echo ${!dailywages[@]}
