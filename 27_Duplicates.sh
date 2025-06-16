 #!/bin/bash

# Ask for input
echo "Enter numbers separated by spaces:"
read -a numbers  # read input as an array

# Check if user entered anything
if [ ${#numbers[@]} -eq 0 ]; then
  echo "❌ No numbers entered."
  exit 1
fi

# Process and find duplicates
duplicates=$(printf "%s\n" "${numbers[@]}" | sort | uniq -d)

# Print result
if [ -z "$duplicates" ]; then
  echo "✅ No duplicates found."
else
  echo "🔁 Duplicate numbers are:"
  echo "$duplicates"
fi
