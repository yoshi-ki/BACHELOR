import matplotlib.pyplot as plt
import numpy as np
import math
def f (x) :
    return math.exp(x*x*x*x) - math.pi
def f_prime (x) :
    return 4 * (x*x*x) * math.exp(x*x*x*x)
# f, f', initial x
def newton_method(f, f_prime,x) :
    c = 0
    try:
        while(abs(f(x)) > 0.01):
            x = x - (f(x)/f_prime(x))
            c = c + 1
            if(c>300):
                break
    except:
        c = -1
    return c
def dumped_newton_method(f,f_prime,x,beta,lamb):
    c = 0
    j = 0
    try :
        while(abs(f(x)) > 0.01):
            j = 0
            while(abs(f(x - f(x)/(f_prime(x)*pow(lamb,j)))) > (1-(beta/pow(lamb,j)))*abs(f(x))):
                j = j + 1
            x = x - (f(x)/(f_prime(x)*pow(lamb,j)))
            c = c + 1
            if(c>300):
                break
    except:
        c = -1
    return c

if __name__ == '__main__':
    X1 = []
    Y1 = []
    for i in range(200):
        initial_x = i*0.1 - 10
        if (newton_method(f,f_prime,initial_x) != -1):
            X1.append(initial_x)
            Y1.append(newton_method(f,f_prime,initial_x))
    plt.figure()
    fig, ax = plt.subplots()
    ax.plot(X1, Y1,label="newton")
    X2 = []
    Y2 = []
    for i in range(200):
        initial_x = i*0.1 - 10
        if(dumped_newton_method(f,f_prime,initial_x,0.5,2)!= -1):
            X2.append(initial_x)
            Y2.append(dumped_newton_method(f,f_prime,initial_x,0.5,2))
    ax.plot(X2, Y2,label="dumped newton")
    ax.legend(bbox_to_anchor=(0.5, 0, 0.5, 1))
    plt.savefig('compare.png')
