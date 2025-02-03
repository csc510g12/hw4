BEGIN { FS=","; sum=0; count=0 }
NR > 1 && $6 != "" { sum += $6; count++ } 
END { 
    if (count > 0) 
        print "Average Age: " sum/count 
    else 
        print "No age data available"
}