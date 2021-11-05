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

max=${RandomList[0]}
min=${RandomList[0]}

for i in "${RandomList[@]}"
do
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi

    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done

echo "Max is: $max"
echo "Min is: $min"

secondLargest=${RandomList[0]}
secondSmallest=${RandomList[0]}

for i in "${RandomList[@]}"
do
	if [[ "$i" -lt "$secondSmallest" && "$i" -ne "$min" ]];
	then
			secondSmallest="$i"
	fi

   if [[ "$i" -gt "$secondLargest" && "$i" -ne "$max" ]];
	then
			secondLargest="$i"
	fi
done

echo "Second Largest: $secondLargest"
echo "Second Smallest: $secondSmallest"



