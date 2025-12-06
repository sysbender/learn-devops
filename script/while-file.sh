LINE=1
while read -r CURRENTLINE
    do 
        echo "line = $LINE : $CURRENTLINE"
        ((LINE++))
    done < "./test.txt"