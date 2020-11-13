import numpy as np
import random
from matplotlib import pyplot as plt

degree = 30

def mc (sample,mc_errors):
    integral_mc = 0.
    for i in range(sample):
        for j in range(degree):
            x = np.random.rand(degree)
        integral_mc = integral_mc + (1+np.sum(x**2))
    #mc_errors.append(abs(integral_mc/sample - np.pi))
    mc_errors.append(integral_mc/sample)
    return 


def generate(n):
    x = np.array([])
    for i in range(degree):
        rand = 0
        for i in range(59):
            rand = (rand + (n>>i)%2)*2
        rand = rand / (2 ** 60)
        x = np.append(x,rand)
        n = n+1
    return x


def qmc (sample,qmc_errors):
    integral_qmc = 0.
    for i in range(sample):
        x = generate(i*degree)
        integral_qmc = integral_qmc +(1+np.sum(x**2))
    #qmc_errors.append(abs(integral_qmc/sample - np.pi))
    print(integral_qmc/sample)
    qmc_errors.append(integral_qmc/sample)
    return 

if __name__ == "__main__":
    repeat = 18

    # MC
    mc_errors = []
    for i in range(repeat):
        sample = 2 ** i
        print(i)
        mc(sample,mc_errors)
    

    # QMC
    qmc_errors = []
    for i in range(repeat):
        sample = 2 ** i
        print(i)
        qmc(sample,qmc_errors)


    plt.figure()
    plt.xlabel("N")
    plt.ylabel("values in degree "+str(degree))
    plt.plot(np.arange(repeat),mc_errors,label="mc")
    plt.plot(np.arange(repeat),qmc_errors,label="qmc")
    plt.legend()
    plt.savefig("mc_result"+str(degree)+".png")

