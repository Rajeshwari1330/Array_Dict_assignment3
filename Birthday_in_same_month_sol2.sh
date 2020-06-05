#!/bin/bash -s
declare -A month
i=1

while [ $i -le 12 ]
do
        month[$i]=0;
        ((i++))
done
i=0
while (( $i <= 49 ))
do
        key=$((RANDOM%12+1));
        value=${month[$key]};
        ((value++))
        month[$key]=$value;
        ((i++))
done

for key in ${!month[@]}
do
        echo $key "->" ${month[$key]}
done



