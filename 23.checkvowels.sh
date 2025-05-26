#!/bin/bash
echo "Enter your string:"
read COUNT
vowel_count=$( echo $COUNT | grep -i -o "[aeiou]" | wc -l)

echo "number of vowels in given string:$vowel_count"