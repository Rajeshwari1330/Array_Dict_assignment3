!/bin/bash -x
function DICE_no()
{
        dice_no=$(( RANDOM % 6 + 1 ))
        echo "dice number is $dice_no";
}
DICE_no

#declare -A dict
while [ $dice_no -gt 0 ]
do
        DICE_no
        if((dice_no==1))
        then
                dict1+=( "$dice_no" )
                if ((${dict1[9]}))
                then
                        echo "1 has max occurence"
                        break
                fi
        elif((dice_no==2))
        then
                dict2+=( "$dice_no" )
                if ((${dict2[9]}))
                then
                        echo "2 has max occuerence"
                        break
                fi
        elif((dice_no==3))
        then
                dict3+=( "$dice_no" )
                if ((${dict3[9]}))
                then
                        echo "3 has max occuerence"
                        break
                fi
        elif((dice_no==4))
        then
                dict4+=( "$dice_no" )
                if ((${dict4[9]}))
                then
                        echo "4 has max occurence"
                        break
                fi
        elif((dice_no==5))
        then
                dict5+=( "$dice_no" )
                if ((${dict5[9]}))
                then
                        echo "5 has max occurence"
                        break
                fi
        elif((dice_no==6))
        then
                dict6+=( "$dice_no" )
                if ((${dict6[9]}))
                then
                        echo "6 has max occuerence"
                        break
                fi
        fi
done

n1=${#dict1[@]}
n2=${#dict2[@]}
n3=${#dict3[@]}
n4=${#dict4[@]}
m5=${#dict5[@]}
n6=${#dict6[@]}

if((n1<n2 && n1<n3 && n1<n4 && n1<m5 && n1<n6))
then
        echo "1 has min occurence of $n1"
        exit
elif((n2<n1 && n2<n3 && n2<n4 && n2<m5 && n2<n6))
then
        echo "2 has min occurence of $n2"
        exit
elif((n3<n1 && n3<n2 && n3<n4 && n3<m5 && n3<n6))
then
        echo "3 has min occurence of $n3"
        exit
elif((n4<n1 && n4<n2 && n4<n3 && n4<m5 && n4<n6))
then
        echo "4 has min occurence of $n4"
        exit
elif((m5<n1 && m5<n2 && m5<n3 && m5<n4 && m5<n6))
then
        echo "5 has min occurence of $m5"
        exit
elif((n6<n1 && n6<n2 && n6<n3 && n6<n4 && n6<m5))
then
        echo "6 has min occurence of $m6"
        exit
fi


