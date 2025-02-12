BEGIN { FS=","; sum=0; count=0 }

NR > 1 { 
    age = ($7 ~ /^[0-9]+$/) ? $7 : 0
    sum += age
    count += age>0 ? 1 : 0
}

END { 
    if (count > 0) 
        printf "Average Age: %.2f\n", sum / count
    else 
        print "No age data available"
}
