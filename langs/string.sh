
str="Hello world"

# length
echo ${#str}

# concat
echo "$str! Goodbye."

# substr
echo ${str:0:5}

# replace
echo ${str/world/John}

# split
IFS=" " read -ra words <<<"$str"
for word in "${words[@]}" ; do 
    echo $word
    done