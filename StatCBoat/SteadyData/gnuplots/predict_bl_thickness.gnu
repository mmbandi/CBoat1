#! gnuplot
b0  = 0.034415
b10 = 0.039783
b20 = 0.047336
b30 = 0.058148
b35 = 0.067144

set key top left
set xr [0:0.1]
set xlabel 'r (m)'
set ylabel '{/Symbol d} (m)'
set label 'u goes from max to 10% over 2{/Symbol d}.' at 0.02,0.0008
plot \
      b0 *x**0.8 t ' 0% Glycerol' w l lw 2, \
      b10*x**0.8 t '10% Glycerol' w l lw 2, \
      b20*x**0.8 t '20% Glycerol' w l lw 2, \
      b30*x**0.8 t '30% Glycerol' w l lw 2, \
      b35*x**0.8 t '35% Glycerol' w l lw 2;

set term push
set term postscript eps enhanced color solid size 4,3 18
set outp 'predict_bl_thickness.eps'
replot
set term pop
!epstopdf predict_bl_thickness.eps
!cp predict_bl_thickness.* /home/shreyas/Research-Major/cboat-stationary/talks/DFD2016/Figures


