
# check file exist

if [[ -f "file.txt" ]] ; then 
     
        echo " file.txt exists!" 
     
fi

# read file line by line
while IFS= read -r line ; do 
    echo "- $line"
done < file.txt 


# write file

echo " $(date)" >> file.txt