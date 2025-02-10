#!/usr/bin/awk -f

BEGIN {
	FS = ","
	tot = 0
	count = 0
}

NR > 1 {
	if ($7 != "") {
		tot += $7
		count++
	}
	
}

END {
	avg_age = tot / count
	print "Average Age of Passengers: " avg_age
}
