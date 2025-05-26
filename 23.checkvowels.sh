#!/bin/bash
read -p "enter string:" 
vowel_count=$(echo "$input" | grep -o -i "[aeiou]" | wc -l)

echo "number of vowels in give string:$vowel_count"