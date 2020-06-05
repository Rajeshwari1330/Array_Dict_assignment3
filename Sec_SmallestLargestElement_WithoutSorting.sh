#!/bin/bash -x
function random3dig()
{
        number=$((RANDOM % 899 + 100 ))
        echo "$number"
}

for((i=0;i<=9;i++))
do
        random3dig
        array+=( "$number" )
done
echo "${array[@]}"

largest=${array[0]}
secondLargest='temp'

function second_largest_element()
{
        for(( i=1; i<${#array[@]}; i++ ))
        do
                if [[ ${array[i]} > $largest ]]
                then
                        secondLargest=$largest
                        largest=${array[i]}

                elif (( ${array[i]} != $largest )) && ( [[ "$secondLargest" = "temp" ]] || [[ ${array[i]} > $secondLargest ]] )
                then
                        secondLargest=${array[i]}
                fi
        done
echo "secondLargest = $secondLargest"
}
second_largest_element


if [ "${#array[@]}" -lt 2 ]
then
        echo "Invalid Input"
        exit 1
fi

smallest=${array[0]}
secondSmallest='temp'

function second_smallest_element()
{
        for(( i=1; i<${#array[@]}; i++ ))
        do
                if [[ ${array[i]} < $smallest ]]
                then
                        secondSmallest=$smallest
                        smallest=${array[i]}

                elif (( ${array[i]} != $smallest )) && ( [[ "$secondSmallest" = "temp" ]] || [[ ${array[i]} < $secondSmallest ]] )
                then
                        secondSmallest=${array[i]}
                fi
        done
echo "secondSmallest = $secondSmallest"
}
second_smallest_element









