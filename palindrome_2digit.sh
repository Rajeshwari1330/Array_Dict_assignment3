#!/bin/bash -x

echo "The repetitive palindrome no between the range is"

for((i=10;i<=100;i++))
do
      temp=$i;
      reverse_num=0;
        while(($temp))
        do
                rem=$(($temp%10))
                temp=$(($temp/10));
                reverse_num=$(($reverse_num*10+$rem))
        done
        if(($i==$reverse_num))
        then
                echo "$i"
        fi
	arr[i]=$i
done
echo "${arr[i]}"
