reset
set term png
set output "SRgraph.png"
set size 1,1
set origin 0,0
set multiplot
set key top right
set key box
set xlabel 'Independent Variable'
set ylabel 'Dependent Variable'
set title 'Deliverable 2a - Exponential Graph'
set yrange [-2:15]
set size 0.5,1
set origin 0,0
plot [-5:5] exp(2*x) title 'exp(2x)' with lines lt 5 lw 3

set origin 0.5,0
set size 0.5, 1
set xtics ("h = 0.1" 0.25, "h = 0.01" 1.75, "h = 0.001" 3.25)
set boxwidth 0.5
set style fill solid
set xlabel 'Width'
set ylabel 'Integral'
set title 'Deliverable 2b - SR Bar Graph'
set key top right
set key box
set yrange [11000:11060]
set ytics (11000,11010,11020,11030,11040,11050,11060)
plot 'SRdata.dat' every 2 using 1:2 title 'Simpson' with boxes ls 5,'SRdata.dat' every 2::1 using 1:2 title 'Analytical' with boxes ls 6

unset multiplot
reset