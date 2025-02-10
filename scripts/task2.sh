#!/bin/bash
echo "Lines containing 'banana':"
grep "banana" sample.txt

echo "Lines that do not contain 'banana':"
grep -v "banana" sample.txt

echo "Unique lines:"
sort "sample.txt" | uniq > sample_unique.txt
cat sample_unique.txt

echo "Unique count:"
sort "sample.txt" | uniq -c > sample_unique_count.txt
cat sample_unique_count.txt

echo "Count bananas:"
sort "sample.txt" | grep "banana" sample.txt | uniq -c > banana_count.txt
cat banana_count.txt
