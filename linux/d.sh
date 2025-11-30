

NAME="John Doe"

# variable uppercase
echo "my name is $NAME"

# user input
read -p " Enter your name: " NAME
echo "your name is $NAME"

# conditional 
if [ "$NAME" == "Jason"  ]
then 
  echo "Welcome $NAME"
elif [ "$NAME" == "jason" ]
then
    echo "welcom $NAME"
else
  echo "You are not allowed to enter"
fi


# comparison  = -eq -ne -gt -ge -lt -le

NUM0=5
read -p "enter a number 0~9: " NUM
if [ "$NUM" -gt 9   ]
then
   echo " $NUM is not valid : should be 0~9"
fi 

if [ "$NUM" -lt 0 ] 
then  
   echo " $NUM is not valid : should be 0~9"
fi

if [ "$NUM" -eq "$NUM0" ]
then
    echo "You win"
else 
    echo "You lose"
fi





