import numpy as np
import random
from matplotlib import pyplot as plt


def generate_rand (n):
    E = 0
    E2 = 0
    for i in range(2**n):
        k = random.random()
        k = k*k
        E = E + k
        E2 = E2 + k * k
    E = E/(2**n)
    V = (E2/(2**n)) - E * E
    return (E,V)



if __name__ == "__main__" :
    n = 25
    plt.figure()
    E_list = []
    V_list = []
    
    for i in range(n):
        print(i)
        E,V = generate_rand(i)
        E_list.append(abs(E-1/3))
        V_list.append(abs(V-4/45))

    print(E)
    print(V)

    plt.subplot(2,1,1)
    plt.xlabel("num")
    plt.ylabel("difference of E")
    plt.plot(np.arange(n),np.log2(E_list))

    plt.subplot(2,1,2)
    plt.xlabel("num")
    plt.ylabel("difference of V")
    plt.plot(np.arange(n),np.log2(V_list))
    
    plt.savefig("result.png")

