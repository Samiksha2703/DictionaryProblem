#!/bin/bash/

echo "Welcome to dictionary problem"

#!/bin/bash/

#Problem1 : Roll the dice till one of the number has reach 10 

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


#Problem2 : Count number of people having same birth month between year 92-93


Month() {

month=$(( $RANDOM % 12 ))

        case $month in

        0)
        jan=$(( $jan + 1 ))
        mon[1]=$jan
        ;;

        1)
        feb=$(( $feb + 1 ))
        mon[2]=$feb
        ;;

        2)
        mar=$(( $mar + 1 ))
        mon[3]=$mar
        ;;

        3)
        apr=$(( $apr + 1 ))
        mon[4]=$apr
        ;;

        4)
        may=$(( $may + 1 ))
        mon[5]=$may
        ;;

        5)
        jun=$(( $jun + 1 ))
        mon[6]=$jun
        ;;

        6)
        jul=$(( $jul + 1 ))
        mon[7]=$jul
        ;;

	7)
        aug=$(( $aug + 1 ))
        mon[8]=$aug
        ;;

        8)
        sep=$(( $sep + 1 ))
        mon[9]=$sep
        ;;

        9)
        oct=$(( $oct + 1 ))
        mon[10]=$oct
        ;;

        10)
        nov=$(( $nov + 1 ))
        mon[11]=$nov
        ;;

        11)
        dec=$(( $dec + 1 ))
        mon[12]=$dec
        ;;

        esac
}

declare -A mon

year92=0
year93=1

jan=0
feb=0
mar=0
apr=0
may=0
jun=0
jul=0
aug=0
sep=0
oct=0
nov=0
dec=0

mon[1]=0
mon[2]=0
mon[3]=0
mon[4]=0
mon[5]=0
mon[6]=0
mon[7]=0
mon[8]=0
mon[9]=0
mon[10]=0
mon[11]=0
mon[12]=0

n=0

while [ $n -lt 50 ]
do

random=$(( $RANDOM % 2 ))

        case $random in

        $year92)
        Month
        ;;

        $year93)
        Month
        ;;

        esac

        n=$(( $n + 1 ))

done

for i in `seq ${#mon[@]}`
do

echo "$i month : ${mon[$i]} people"

done

