#!/bin/bash
echo "Enter a string:"
read STRING
vowel_count=$(echo "$STRING" | grep "aeiou" | wc -l)

echo "number of vowels in given string :$vowel_count"