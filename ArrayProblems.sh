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
echo "Array in original order :"
echo ${RandomList[*]}

for ((i = 0; i<10; i++))
do

    for((j = 0; j<10-i-1; j++))
    do

        if [[ "${RandomList[j]}" -gt "${RandomList[$((j+1))]}" ]]
        then

            temp=${RandomList[j]}
            RandomList[$j]=${RandomList[$((j+1))]}  
            RandomList[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${RandomList[*]}

echo "Second Largest Element: ${RandomList[8]}"
echo "Second Smallest Element: ${RandomList[1]}"





