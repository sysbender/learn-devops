
greet(){
    local name=$1
    echo "Hello $name"
    return 0
} 

greet "world"

add(){
    local result=$(($1 + $2))
    echo  $result
}

s=$(add 3 4)
echo "sum = $s"