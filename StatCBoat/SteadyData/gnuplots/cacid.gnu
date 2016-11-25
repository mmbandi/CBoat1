# gnuplot

# plot \
#     '<cat ../Glycerol-CAcid-Data/Gly0%-CA.txt  | dos2unix -c mac | tail -n +2' u 1:(1e4*$2*$1**0.6) t ' 0% Glycerol' w p, \
#     '<cat ../Glycerol-CAcid-Data/Gly10%-CA.txt | dos2unix -c mac | tail -n +2' u 1:(1e4*$2*$1**0.6) t '10% Glycerol' w p, \
#     '<cat ../Glycerol-CAcid-Data/Gly20%-CA.txt | dos2unix -c mac | tail -n +2' u 1:(1e4*$2*$1**0.6) t '20% Glycerol' w p, \
#     '<cat ../Glycerol-CAcid-Data/Gly30%-CA.txt | dos2unix -c mac | tail -n +2' u 1:(1e4*$2*$1**0.6) t '30% Glycerol' w p, \
#     '<cat ../Glycerol-CAcid-Data/Gly35%-CA.txt | dos2unix -c mac | tail -n +2' u 1:(1e4*$2*$1**0.6) t '35% Glycerol' w p, \
#     ;

reset
set log
set key bottom left
set xr [2e-4:0.2]
set yr [2e-4:0.1]
set xlabel 'r (m)'
set ylabel 'u (m/s)'

set format '10^{%T}'
set label 1 'r^{-3/5}' at 0.01,0.02
plot \
    '<cat ../Glycerol-CAcid-Data/Gly0%-CA.txt  | dos2unix -c mac | tail -n +2' u 1:2 t ' 0% Glycerol' w p, \
    '<cat ../Glycerol-CAcid-Data/Gly10%-CA.txt | dos2unix -c mac | tail -n +2' u 1:2 t '10% Glycerol' w p, \
    '<cat ../Glycerol-CAcid-Data/Gly20%-CA.txt | dos2unix -c mac | tail -n +2' u 1:2 t '20% Glycerol' w p, \
    '<cat ../Glycerol-CAcid-Data/Gly30%-CA.txt | dos2unix -c mac | tail -n +2' u 1:2 t '30% Glycerol' w p, \
    '<cat ../Glycerol-CAcid-Data/Gly35%-CA.txt | dos2unix -c mac | tail -n +2' u 1:2 t '35% Glycerol' w p, \
    (x>1e-3 & x<0.1)?1e-3*x**-0.6:1/0 notitle w l lt -1 lw 2;
set term push
set term postscript eps enhanced color solid size 4,3 18
set outp 'Cacid_scaling.eps'
replot
set term pop
!epstopdf Cacid_scaling.eps
!cp Cacid_scaling.* /home/shreyas/Research-Major/cboat-stationary/talks/DFD2016/Figures

reset
set log
set key bottom left
set xr [2e-4:0.2]
set yr [2e-3:0.1]
set xlabel 'r (m)'
set ylabel 'u (m/s)'
set format '10^{%T}'
set label 1 'r^{-2/3}' at 0.01,0.025
plot \
    '<cat ../Glycerol-Methanol-Data/Gly0%-Meth.txt  | dos2unix -c mac | tail -n +2' u 1:2 t ' 0% Glycerol' w p, \
    '<cat ../Glycerol-Methanol-Data/Gly10%-Meth.txt | dos2unix -c mac | tail -n +2' u 1:2 t '10% Glycerol' w p, \
    '<cat ../Glycerol-Methanol-Data/Gly20%-Meth.txt | dos2unix -c mac | tail -n +2' u 1:2 t '20% Glycerol' w p, \
    '<cat ../Glycerol-Methanol-Data/Gly30%-Meth.txt | dos2unix -c mac | tail -n +2' u 1:2 t '30% Glycerol' w p, \
    '<cat ../Glycerol-Methanol-Data/Gly35%-Meth.txt | dos2unix -c mac | tail -n +2' u 1:2 t '35% Glycerol' w p, \
    (x>1e-3 & x<0.1)?1e-3*x**-0.667:1/0 notitle w l lt -1 lw 2;
set term push
set term postscript eps enhanced color solid size 4,3 18
set outp 'Methanol_scaling.eps'
replot
set term pop
!epstopdf Methanol_scaling.eps
!cp Methanol_scaling.* /home/shreyas/Research-Major/cboat-stationary/talks/DFD2016/Figures


reset
unset log
set log x
set xr [1e-3:0.2]
set yr [-0.75:-0.5]
set xlabel 'r (m)'
set ylabel 'n - power law exponent'
set format x '10^{%T}'
set label 1 'Adsorbed' at 3e-3, -0.58
set label 2 'Volatile' at 3e-3, -0.65
plot \
    '<cat ../Glycerol-CAcid-Data/Gly0%-CA.txt  | dos2unix -c mac | tail -n +2' u 1:3 t 'Camphoric Acid' w p pt 7 lt 1, \
    '<cat ../Glycerol-CAcid-Data/Gly10%-CA.txt | dos2unix -c mac | tail -n +2' u 1:3 notitle w p pt 7 lt 1, \
    '<cat ../Glycerol-CAcid-Data/Gly20%-CA.txt | dos2unix -c mac | tail -n +2' u 1:3 notitle w p pt 7 lt 1, \
    '<cat ../Glycerol-CAcid-Data/Gly30%-CA.txt | dos2unix -c mac | tail -n +2' u 1:3 notitle w p pt 7 lt 1, \
    '<cat ../Glycerol-CAcid-Data/Gly35%-CA.txt | dos2unix -c mac | tail -n +2' u 1:3 notitle w p pt 7 lt 1, \
    '<cat ../Glycerol-Methanol-Data/Gly0%-Meth.txt  | dos2unix -c mac | tail -n +2' u 1:3 t 'Methanol' w p pt 5 lt 3, \
    '<cat ../Glycerol-Methanol-Data/Gly10%-Meth.txt | dos2unix -c mac | tail -n +2' u 1:3 notitle w p pt 5 lt 3, \
    '<cat ../Glycerol-Methanol-Data/Gly20%-Meth.txt | dos2unix -c mac | tail -n +2' u 1:3 notitle w p pt 5 lt 3, \
    '<cat ../Glycerol-Methanol-Data/Gly30%-Meth.txt | dos2unix -c mac | tail -n +2' u 1:3 notitle w p pt 5 lt 3, \
    '<cat ../Glycerol-Methanol-Data/Gly35%-Meth.txt | dos2unix -c mac | tail -n +2' u 1:3 notitle w p pt 5 lt 3, \
    -0.6+0*x notitle w l lt -1 lw 4, \
    -0.667+0*x notitle w l lt -1 lw 4 \
    ;
set term push
set term postscript eps enhanced color solid size 4,3 18
set outp 'Cacid_exponent.eps'
replot
set term pop
!epstopdf Cacid_exponent.eps
!cp Cacid_exponent.* /home/shreyas/Research-Major/cboat-stationary/talks/DFD2016/Figures

reset

mu0  = 0.00090285
mu10 = 0.0011700
mu20 = 0.0015550
mu30 = 0.0021850
mu35 = 0.0026052
mu40 = 0.0032200

rho0  = 997.30
rho10 = 1020.9
rho20 = 1045.5
rho30 = 1070.9
rho35 = 1084.1

set log

# plot \
#     '<cat ../Glycerol-CAcid-Data/Gly0%-CA.txt  | dos2unix -c mac | tail -n +2' u 1:($2*(mu0*rho0)**0.2)   t ' 0% Glycerol' w p, \
#     '<cat ../Glycerol-CAcid-Data/Gly10%-CA.txt | dos2unix -c mac | tail -n +2' u 1:($2*(mu10*rho10)**0.2) t '10% Glycerol' w p, \
#     '<cat ../Glycerol-CAcid-Data/Gly20%-CA.txt | dos2unix -c mac | tail -n +2' u 1:($2*(mu20*rho20)**0.2) t '20% Glycerol' w p, \
#     '<cat ../Glycerol-CAcid-Data/Gly30%-CA.txt | dos2unix -c mac | tail -n +2' u 1:($2*(mu30*rho30)**0.2) t '30% Glycerol' w p, \
#     '<cat ../Glycerol-CAcid-Data/Gly35%-CA.txt | dos2unix -c mac | tail -n +2' u 1:($2*(mu35*rho35)**0.2) t '35% Glycerol' w p, \
#     ;
