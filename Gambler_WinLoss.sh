!/bin/bash -x
echo "Enter the one which gambler want to choose 1:HEAD OR 2:TAIL :"
read a
function flip()
{
n=$((RANDOM%2 + 1))
if(($n==1))
then
        echo "OUTPUT IS HEAD"
        add=1;
elif(($n==2))
then
        echo "OUTPUT IS TAIL"
        sub=1;
fi
}
money=100
i=1
j=1
bet=0
while(($money !=0 || $money !=200))
do
        flip
        if(($n==1))
        then
                echo "won $i time"
                money=`expr $money + $add`
                echo "money is $money"
                i=`expr $i + 1`
        elif(($n==2))
        then
                echo "won $j time"
                money=`expr $money - $sub`
                echo "money is $money"
                j=`expr $j + 1`
        fi

bet=`expr $bet + 1`
echo "number of bet is $bet"

        if(($money==200)) 
        then
                exit
        elif(($money==0))
        then
                exit
        fi
done


