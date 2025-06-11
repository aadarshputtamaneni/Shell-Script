 #!/bin/bash

# Ask the user to enter a number
echo "Enter a number:"
read num

# Check if the number is less than or equal to 1
if [ $num -le 1 ]; then
  echo "$num is not a prime number"
  exit 1
fi

# Loop from 2 to num-1
for (( i=2; i<$num; i++ ))
do
  # If num is divisible by i, it's not prime
  if (( num % i == 0 ))
  then
      echo "$num is not a prime number"
      exit 1
  else
      echo "$num is a prime number"
  fi
done
 