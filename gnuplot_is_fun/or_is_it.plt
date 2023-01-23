set terminal pngcairo  transparent enhanced fontscale 1.0 size 600, 400 
set output 'fit.2.png'
set key bmargin center horizontal Right noreverse enhanced autotitle nobox
set title "unweighted fit" 
set xlabel "Temperature T (Â°C)" 
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set ylabel "Density (g/cm^3)" 
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set fit nologfile brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
l(x) = y0 + m*x
NO_ANIMATION = 1
myencoding = "utf8"
y0 = 1.08016573988973
m = -0.00118151895104659
FIT_CONVERGED = 1
FIT_NDF = 35
FIT_STDFIT = 0.000433301255025213
FIT_WSSR = 6.57124921622488e-06
FIT_P = 1.0
FIT_NITER = 5
y0_err = 0.00132084498953286
m_err = 2.92589245092451e-05
## Last datafile plotted: "lcdemo.dat"
plot 'lcdemo.dat', l(x)
## fit l(x) 'lcdemo.dat' via y0, m