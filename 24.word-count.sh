
FILE=/tmp/demo/sample.txt

if [ -demo $FILE ]
then 
    echo "already $FILE exits"
else
    echo "make sure $FILE exits"
fi

