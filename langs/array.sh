
FRUITS=("apple" "banana" "cherry")

A="${FRUITS[0]}"
ALL="${FRUITS[@]}"
echo $A   
echo $ALL

FRUITS+=("date")

for fruit in "${FRUITS[@]}"
    do 
        echo $fruit
    done

echo "${#FRUITS[@]}"