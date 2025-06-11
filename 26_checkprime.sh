 #!/bin/bash

echo "Enter a number:"
read num
if [ $num -le 1 ]
then
    echo "$num is not a prime number"
    exit 1
else

for (( i=2; i<$num; i++ ))
do
if (( num % i == 0 ))
then
    echo "$num is not a prime number"
    exit 1
else
    echo "$num is a prime number"
fi

done

 