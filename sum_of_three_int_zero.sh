#!/bin/bash -x
echo "how many elements should be there for sum up"
read n

echo "enter the array elements"
for((i=0;i<n;i++))
do
        read num
        list+=(" $num ")
done
echo "${list[@]}"

found=0
for((i=0; i<n-2; i++))
do
        for((j=i+1; j<n-1; j++))
        do
            for((k=j+1; k<n; k++))
            do
                if ((`expr ${list[i]}+${list[j]}+${list[k]}` == 0))
                then
                        echo "the elements which add sum to zero are"
                        echo "${list[i]}"  "${list[j]}"  "${list[k]}"
                        found=1
                        exit
                fi
            done
        done
done

if(($found!=1))
then
        echo "such kind of element does not exist here"
fi



