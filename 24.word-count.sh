
FILE=/tmp/demo/sample.txt

if [ -f $FILE ]
then 
    echo "already $FILE exits"
else
    echo "make sure $FILE exits"
fi

while IFS= read -r line
do
RESU=$(echo $line )
done <<< $FILE
