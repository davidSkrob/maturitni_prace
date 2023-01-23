set terminal pngcairo size 30.0 cm , 21.0 cm enhanced color
set output 'plot_4dgr_log_zlogratimovanyDATA.png'
A(x)=A_0*log(x)+ A_1*log(x)**2 + A_2*log(x)**3 + A_3*log(x)**4 + A_4*log(x)**5+c
c = 1
A_0 = 1 
A_1 = 1
A_2 = 1
A_3 = 1
A_4 = 1
#set samples #cislo ktere urci jak pekne se vykresli - 2000 asi
fit A(x) 'rocnikovka_data.csv' using 1:2 via A_0,A_1, A_2, A_3, A_4, c
plot 'rocnikovka_data.csv' using 1:2 with points , A(x) with line	#muzu zadat rozsah
#plot 'rocnikovka_data.csv' using 1:log($2) with points , A(x) with line
#zlogaritmovat data