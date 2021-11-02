#!/bin/bash -x

declare -a RandomList
counter=0;

for (( i=1; i<=10; i++ ))
do
    RanNumber=$((RANDOM%1000))
    RandomList[counter]=$((RanNumber))
    counter=$((counter+1))
done

echo ${RandomList[@]}
