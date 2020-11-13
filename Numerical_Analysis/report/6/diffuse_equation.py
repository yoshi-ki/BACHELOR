import matplotlib.pyplot as plt
import numpy as np

nu = 1.0

def calc(u1,u2,r):
    for i in range(len(u1)):
        if (i != 0 and i != (len(u1)-1)):
            u2[i] = r*u1[i+1] + (1-2*r)*u1[i] + r*u1[i-1]
def draw_diffuse_equation(delt,xn,tn):
    delx = 1/xn
    x_list = []
    for i in range(xn+1):
        x_list.append(delx*i)
    u1 = []
    for i in x_list:
        u1.append(np.sin(np.pi*i))
    u1[0] = 0
    u1[xn] = 0
    u2 = np.zeros(xn+1)
    r = nu * delt / (delx**2)
    fig,ax = plt.subplots()
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    for i in range(tn):
        if (i%2==0) :
            calc(u1,u2,r)
            plt.plot(x_list,u2)
        else :
            calc(u2,u1,r)
            plt.plot(x_list,u1)
    plt.savefig("diffuse_equation.png")

if __name__ == "__main__" :
    draw_diffuse_equation(0.004,10,30)
