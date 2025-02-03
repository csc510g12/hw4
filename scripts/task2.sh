#!/bin/bash

# Check if a file path is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <sample_path>"
    exit 1
fi

sample_path="$1"

# Find all lines containing "banana"
echo "Lines containing 'banana':"
grep "banana" "$sample_path"
echo

# Find lines that do not contain "banana"
echo "Lines NOT containing 'banana':"
grep -v "banana" "$sample_path"
echo

# Get unique lines from the file
echo "Unique lines in the file:"
sort "$sample_path" | uniq
echo

# Count occurrences of each unique line
echo "Unique lines with counts:"
sort "$sample_path" | uniq -c | awk '{print $2": "$1}'
echo

# Count occurrences of lines containing "banana"
echo "Occurrences of lines containing 'banana':"
grep "banana" "$sample_path" | sort | uniq -c | awk '{print $2": "$1}'
