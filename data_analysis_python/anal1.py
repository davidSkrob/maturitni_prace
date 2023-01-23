import matplotlib.pyplot as plt
import numpy as np
from scipy.optimize import curve_fit
import pandas as pd
np.seterr(divide='ignore')

data = pd.read_csv('data.csv', sep=',', header=None)

names = []
energy = np.array([])
eff = np.array([])
for i in range(6):
    names.append(data[i][0])
for j in range(1,10):
    energy = np.append(energy, float(data[0][j]))

data = data.iloc[[1,2,3,4,5,6,7,8,9],[1,2,3,4,5]].to_numpy()
eff = data.astype(np.float)

def func(x, a, b, c, d, e, f):
    #ta funkce co se bude fitovat
    return a * np.log(x)+ b * pow(np.log(x), 2) + c * pow(np.log(x), 3) + d * pow(np.log(x), 4) + e *pow(np.log(x), 5) + f

def lul(x, c):
    return c * np.log(x)

print(eff)

for i in range(5):#sloupce 5
    for j in range(9):#radky
        if not np.isnan(eff[j][i]):
            pass
            #prepsat data z jednoho kazdeho sloupce z data do eff
        
    pars, cov = curve_fit(f=func, xdata=energy, ydata=eff[:,i])#musi brat cely sloupec...
    print(energy, "is energy\n", eff[:,i], "is data\n")

    print(pars)
    print(cov)

    #le plotovani
    p = np.linspace(energy[0], energy[-1], 100000)#hodnoty
    plt.scatter(energy,eff[:,i], s=14)

    #plt.errorbar(anglearray, aver_meas, unc_arr, fmt=".", elinewidth=1, capsize=5, ecolor='black',color='black')
    
    plt.plot(p, func(p, *pars), c="red")
    plt.title("Závislost ")
    plt.ylabel("efektivita")
    plt.xlabel("energie [keV]")
    plt.savefig("C:/Users/david/Desktop/maturitni prace/data_analysis_python/lul{}.pdf".format(i))
    plt.close()