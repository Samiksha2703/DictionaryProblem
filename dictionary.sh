#!/bin/bash/

echo "Welcome to dictionary problem"

#!/bin/bash/

declare -A num

one=0
two=0
three=0
four=0
five=0
six=0

max=${num[1]}
minInd=1
maxInd=1

while [[ $one -ne 10 && $two -ne 10 && $three -ne 10 && $four -ne 10 && $five -ne 10 && $six -ne 10 ]]
do

random=$(( $RANDOM % 6 + 1 ))

        case $random in

        1)
        one=$(( $one + 1 ))
        num[1]=$one
        ;;

        2)
        two=$(( $two + 1 ))
        num[2]=$two
        ;;

        3)
        three=$(( $three + 1 ))
        num[3]=$three
        ;;

        4)
        four=$(( $four + 1 ))
        num[4]=$four
        ;;

        5)
        five=$(( $five + 1 ))
        num[5]=$five
        ;;

        6)
        six=$(( $six + 1 ))
        num[6]=$six
        ;;

        esac

done

echo "One of the number has reached 10"

max=${num[1]}
min=${num[1]}

for i in ${!num[@]}
do
        echo "$i : ${num[$i]}"

        if [ ${num[$i]} -gt $max ]
        then max="${num[$i]}"
        maxInd="$i"

        elif [ ${num[$i]} -lt $min ]
        then
        min="${num[$i]}"
        minInd="$i"
        fi
done

echo "Number = $maxInd reached maximum time ( $max )"

echo "Number = $minInd reached minimum  time ( $min )"
