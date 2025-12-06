for i in {1..3}
    do
        echo $i 
    done


for file in *.sh
    do 
        echo $file
    done

# while 
j=1
while [ $j -lt 5 ]
    do 
        echo "loop j=: $j "
        ((j++))
    done

# c-style for loop
for (( i=0; i<5; i++))
    do 
        echo $i
    done