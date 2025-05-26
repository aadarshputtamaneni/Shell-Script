
FILE=/tmp/sample.txt

if [ -d $FILE ]
then
    echo "already $FILE exits"
else
    echo "make sure $FILE exits"
fi

while IFS= read -r line
do
RESULT=$( echo $line | cut -d" " -f1 | sort | uniq -d)
done <<< $FILE