# -*- coding: utf-8 -*-
# a0, a1, a2, a3 -> a
from math import sin
import numpy as np
import matplotlib.pyplot as plt

def mans_sinuss(x,n):
    k=0
    a = (-1)**0*x**1/(1)
    S = a
    while k<n:
        k = k + 1
        R = (-1) * x**2 / ((2*k) * (2*k+1))
        a = a * R
        S = S + a
    return S
x = np.arange(0.,6.28,0.01)
#y = sin(x)
y = np.sin(x)
f1 = mans_sinuss(x,0)
f2 = mans_sinuss(x,1)
f3 = mans_sinuss(x,2)
f4 = mans_sinuss(x,3)
f5 = mans_sinuss(x,4)

plt.plot(x,y,'r')
plt.grid()
plt.plot(x,f1,'g')
plt.plot(x,f2,'b')
plt.plot(x,f3,'c')
plt.plot(x,f4,'y')
plt.plot(x,f5,'k')
plt.show()
    

