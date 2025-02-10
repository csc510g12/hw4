#!usr/bin/awk -f

BEGIN {
	FS = ","
}

NR > 1 {
	pclass[$3]++
}

END {
	print "Number of passengers per class:"
	for (class in pclass) {
		print "Class " class ": " pclass[class]
	}
}
