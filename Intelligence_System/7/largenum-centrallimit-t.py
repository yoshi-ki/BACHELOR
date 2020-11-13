import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm

def kai_distribution (n):
    x = np.zeros(1000)
    for i in range(n):
        x = x + [k ** 2 for k in np.random.normal(0, 1, 1000)]
    return x

def t_distribution (n):
    x = np.random.normal(0, 1, 1000)
    y = kai_distribution(n)
    x = x / np.sqrt(y/2)
    return x

def large_num_thm (n, distribution):
    plt_xlist = []
    plt_ylist = []
    for k in range(n):
        k = k * 10
        x_list = np.random.choice(distribution, (k+1), replace=True)
        xbar = 0.
        for i in range(k):
            xbar = xbar + x_list[i]
        xbar = xbar / (k+1)
        plt_xlist.append(k+1)
        plt_ylist.append(xbar)
    plt.figure()
    plt.plot(plt_xlist,plt_ylist)
    plt.savefig("large_num_thm_t.png")

def central_limit_thm (k,n,distribution,mu,sigma):
    plt_xlist = []
    for j in range(k):
        xbar = 0.
        x_list = np.random.choice(distribution, n, replace=True)
        for i in range(n):
            xbar = xbar + x_list[i]
        xbar = xbar / n
        z = (xbar - mu) / (np.sqrt(sigma)/np.sqrt(n))
        plt_xlist.append(z)
    gauss_list = np.random.normal(0, 1, k)
    plt.figure()
    plt.hist(plt_xlist, range=(-4, 4),bins=50,color='blue', alpha=0.5)
    plt.hist(gauss_list,range=(-4, 4),bins=50,color='red', alpha=0.5)
    plt.savefig("central_lim_thm_t.png")

if __name__ == "__main__" :
    large_num_thm (10000,t_distribution(2))
    central_limit_thm(1000000,100,t_distribution(2),0,1)
