#!/bin/bash -x


for (( i=1; i<=10; i++ ))
do
	RandomNumber=$((RANDOM%1000))
done

echo $RandomNumber
