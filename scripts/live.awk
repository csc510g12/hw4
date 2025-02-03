BEGIN { FS="," }
NR > 1 { survived[$3, $2]++ }
END { 
    print "Survival frequencies per class:"
    for (key in survived) { 
        split(key, k, SUBSEP)
        print "Class " k[1] ", Survived " k[2] ": " survived[key]
    }
}