#!/bin/bash -x
function random3dig()
{
number=$((RANDOM % 899 +100))
echo "$number"
}

for((i=0;i<=9;i++))
do
        random3dig
        array+=( "$number" )
done
echo " "

echo ${array[@]} | tr " " "\t" | sort -nu

secondGreatest=$(printf '%s\n' "${array[@]}" | sort -nu | tail -2 | head -1)

secondSmallest=$(printf '%s\n' "${array[@]}" | sort -nu | head -2 | tail -1)

echo "the second largest element is $secondGreatest"

echo "the second smallest element is $secondSmallest"



