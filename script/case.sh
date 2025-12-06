read -p "Are you 21 or over? Y/N :" ANSWER
echo "answer = $ANSWER"
case "$ANSWER" in 
    [yY] | [yY][eE][sS])
        echo "You can have a beer"
        ;;
    [nN] | [nN][oO])
        echo "Sorry , no drinking"
        ;;
    *)
        echo "not validy input"

esac 