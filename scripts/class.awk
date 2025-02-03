BEGIN { FS="," } 
NR > 1 { count[$3]++ } 
END { 
    print "Passengers per class:" 
    for (c in count) 
        print "Class " c ": " count[c]
}