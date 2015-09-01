set term postscript enhanced size 2.6, 7.0
set output "speed.eps"
reset
unset key 
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.8
set xtic rotate by 90 scale 0 offset 0.4, -6.7	
unset ytics
set y2tics rotate by 90 offset -0.5, -0.5
set xlabel ' '
set yrange [ 0.0 : 35] noreverse nowriteback
set y2label 'Time (milliseconds)' offset -2.5
set lmargin 6
set rmargin 6
set tmargin 2
set bmargin 9
set label 1 "Time to average the temperature in a vector of 5 million measurements" at -1.7, -10.0 rotate by 90
plot "speed.dat" using 2: xtic(1) title "erased" fill solid 0.5 lc rgbcolor "#000000"

