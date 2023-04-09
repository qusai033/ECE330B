reset
set term png
set output "GLIgraph.png"
set size 1,1
set origin 0,0
set multiplot
set key top right
set key box
set xlabel 'Independent Variable'
set ylabel 'Dependent Variable'
set title 'Deliverable 3a - Exponential Graph'
set yrange [-2:15]
set size 0.5,1
set origin 0,0
plot [-5:5] exp(2*x) title 'exp(2x)' with lines lt 2 lw 3

set origin 0.5,0
set size 0.5, 1
set xtics ("N = 2" 0.25, "N = 4" 1.75, "N = 6" 3.25, "N = 8" 4.75, "N = 10" 6.25, "N = 12" 7.75, "N = 16" 9.25, "N = 24" 10.75)
set boxwidth 0.5
set style fill solid
set xlabel 'N values'
set ylabel 'Integral'
set title 'Deliverable 3b - GLI Bar Graph'
set key top right
set key box
set yrange [1000:12500]
plot 'GLIdata.dat' every 2 using 1:2 title 'GLI' with boxes ls 5,'GLIdata.dat' every 2::1 using 1:2 title 'Analytical' with boxes ls 6

unset multiplot
reset
