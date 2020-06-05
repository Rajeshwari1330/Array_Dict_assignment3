#!/bin/bash -x
function birth50()
{
        birth=$((RANDOM%12+1))
}

echo "50 people having birthday's between year 92 and 93 are as follows in a year"

declare -A dict

individual_date=0
while [ $individual_date != 50 ]
do
        birth50
        if(($birth==1))
        then
                dict1+=( "$birth" )

        elif(($birth==2))
        then
                dict2+=( "$birth" )

        elif(($birth==3))
        then
                dict3+=( "$birth" )

        elif(($birth==4))
        then
                dict4+=( "$birth" )

        elif(($birth==5))
        then
                dict5+=( "$birth" )

        elif(($birth==6))
        then
                dict6+=( "$birth" )

        elif(($birth==7))
        then
                dict7+=( "$birth" )

        elif(($birth==8))
        then
                dict8+=( "$birth" )

        elif(($birth==9))
        then
                dict9+=( "$birth" )

        elif(($birth==10))
        then
                dict10+=( "$birth" )

        elif(($birth==11))
        then
                dict11+=( "$birth" )

        elif(($birth==12))
        then
                dict12+=( "$birth" )
        fi

let "individual_date+=1"
done

echo "${#dict1[@]} people has birthday in january"
echo "${#dict2[@]} people has birthday in february"
echo "${#dict3[@]} people has birthday in march"
echo "${#dict4[@]} people has birthday in april"
echo "${#dict5[@]} people has birthday in may"
echo "${#dict6[@]} people has birthday in june"
echo "${#dict7[@]} people has birthday in july"
echo "${#dict8[@]} people has birthday in august"
echo "${#dict9[@]} people has birthday in september"
echo "${#dict10[@]} people has birthday in october"
echo "${#dict11[@]} people has birthday in november"
echo "${#dict12[@]} people has birthday in december"






