
FILE=/tmp/demo/sample.txt

if [ -f $FILE ]
then 
    echo "already $FILE exits"
    exit 1
else
    echo "make sure $FILE exits"
fi

while IFS= read -r line
do
RESU=$(echo $line | cut -d " " -f1 | sort | uniq -d)
done <<< $FILE


echo "this is :$RESU"
