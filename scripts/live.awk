#!/usr/bin/awk -f

BEGIN {
	FS = ","
}

NR > 1 {
	if ($2 == 1) {
		survived[$3]++
	}
	total[$3]++
}

END {
	print "Survival Frequency by Class: "
	for (class in total) {
		if (survived[class] > 0) {
			rate = (survived[class] / total[class]) * 100
		}

		print "Class " class " had a survival rate of " rate
	}
}
