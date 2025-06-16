 #!/bin/bash

echo "Enter numbers :"
read input 

if [[ -z "$input" ]]; then
  echo "You didn't enter any numbers."
else
  echo "$input" | sort | uniq -d
fi
