# Kvadraticka modelova funkce y=f(x) k fitovani
f(x) = a*x*x + b*x + c

# Parametry funkce a jejich pocatecni odhady
a = 1.2
b = 0.5
c = 0.1

set title "Datovy soubor a rucni nastaveni parametru"
plot 'exp.dat' with lp, f(x) with line

pause -1 "Rucne nastavene hodnoty parametru modelove funkce. Podivej se na graf, pak zmackni Enter."

# Nafitujme namerena data ulozena v souboru exp.dat: 1. sloupec x, 2. sloupec y
fit f(x) 'exp.dat' via a,b,c

print "Precti si vysledek, tj. odhady parametru a,b,c a jejich chyby, pak se podivej na vysledny graf"

# Vykreslime experimentalni a nafitovanou krivku
set title "Prvni fit"
plot 'exp.dat' with lp, f(x) with line