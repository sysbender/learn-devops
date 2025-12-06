#/usr/bin/bash
echo "this is test"

if [ -f "test.sh" ]
then 
    echo "file - test.sh"
fi


if [ -d "test" ]
then 
    echo "dir - test"
fi 

if [ -x "test.sh" ]
then 
    echo "executable - test.sh"
fi