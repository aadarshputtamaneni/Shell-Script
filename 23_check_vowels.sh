#!/bin/bash
echo "Enter your string:"
read COUNT
vowel_count=$( echo $COUNT | grep -i -o "[aeiou]" | wc -l)
# -i: This option makes the grep command case-insensitive.
# -o: Display only the matched pattern, not the whole line:
echo "number of vowels in given string:$vowel_count"