
read -p "enter your age: " AGE
if [ $AGE -gt 18 ] ; then
    echo "adult"
elif [ $AGE -eq 18 ] ; then 
    echo "just 18"
else  
    echo "minor"
fi
