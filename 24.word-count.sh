#!/bin/bash

# Define the input file
file="sample.txt"

# Process the file to count word occurrences
tr -c '[:alnum:]' '[\n*]' < "$file" | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2, $1}'