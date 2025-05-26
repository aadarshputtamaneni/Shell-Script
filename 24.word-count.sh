
FILE=/tmp/sample.txt

if [ -f $FILE ]
then 
    echo "already $FILE exits"
else
    echo "make sure $FILE exits"
fi

