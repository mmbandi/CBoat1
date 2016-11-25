# gnuplot

f(x) = a
fit [2e-2:5e-2][] f(x) '<cat ../Glycerol-CAcid-Data/Gly0%-CA.txt  | dos2unix -c mac | tail -n +2' u 1:(1e4*$2*$1**0.6) via a
a0 = a
fit [2e-2:5e-2][] f(x) '<cat ../Glycerol-CAcid-Data/Gly10%-CA.txt  | dos2unix -c mac | tail -n +2' u 1:(1e4*$2*$1**0.6) via a
a10 = a
fit [2e-2:5e-2][] f(x) '<cat ../Glycerol-CAcid-Data/Gly20%-CA.txt  | dos2unix -c mac | tail -n +2' u 1:(1e4*$2*$1**0.6) via a
a20 = a
fit [2e-2:5e-2][] f(x) '<cat ../Glycerol-CAcid-Data/Gly30%-CA.txt  | dos2unix -c mac | tail -n +2' u 1:(1e4*$2*$1**0.6) via a
a30 = a
fit [2e-2:5e-2][] f(x) '<cat ../Glycerol-CAcid-Data/Gly35%-CA.txt  | dos2unix -c mac | tail -n +2' u 1:(1e4*$2*$1**0.6) via a
a35 = a


