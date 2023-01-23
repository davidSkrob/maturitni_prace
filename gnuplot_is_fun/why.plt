set terminal pngcairo size 30.0 cm , 21.0 cm enhanced color
set output 'to_me_poser.png'
plot "rad_pozadi.data" using 3:xtic(2)