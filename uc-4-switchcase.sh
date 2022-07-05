#!/bin/bash -x

fulltime=1
parttime=2
randomcheck=$((RANDOM%3))
emprateperhr=20
 
case $randomcheck in 
                       $parttime )
                                 emphrs=4
                        ;;
                        $fulltime )
                                  emphrs=8
                        ;;
                        *)
                                  emphrs=0
                        ;;
 esac
 
salary=$(($emphrs*$emprateperhr))
