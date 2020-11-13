import matplotlib.pyplot as plt
import numpy as np
import math
g = 9.8
m = 0.3
k = 0.1
def f1 (v) :
    return v
def f2x (vx,vy,m):
    return - (k * (vx*vx + vy*vy) * vx) / (m * math.sqrt(vx*vx + vy*vy))
def f2y (vx,vy,m):
    return - g - (k * (vx*vx + vy*vy) * vy) / (m * math.sqrt(vx*vx + vy*vy))
def runge_kutta (x,y,vx,vy,f1,f2x,f2y,filename):
    alpha = 1
    beta = 1/2
    h = 0.01
    x_list = []
    vx_list = []
    y_list = []
    vy_list = []
    x_list.append(x)
    vx_list.append(vx)
    y_list.append(y)
    vy_list.append(vy)
    for i in range (200):
        x_new = x + h * ( (1-beta) * f1(vx) + beta * f1(vx + alpha * h * f1(vx)))
        vx_new = vx + h * ( (1-beta) * f2x(vx,vy,m) + beta * f2x(vx+alpha*h*f2x(vx,vy,m),vy+alpha*h*f2y(vx,vy,m),m))
        y_new = y + h * ( (1-beta) * f1(vy) + beta * f1(vy + alpha * h * f1(vy)))
        vy_new = vy + h * ( (1-beta) * f2y(vx,vy,m) + beta * f2y(vx+alpha*h*f2x(vx,vy,m),vy+alpha*h*f2y(vx,vy,m),m))
        x_list.append(x_new)
        vx_list.append(vx_new)
        y_list.append(y_new)
        vy_list.append(vy_new)
        x = x_new
        vx = vx_new
        y = y_new
        vy = vy_new
        if y < 0 :
            break
    fig = plt.figure(figsize=(12, 8))
    plt.xlim(0,13.411)
    plt.ylim(0,5)
    plt.plot([6.767, 6.767], [0, 1.554], 'k-', lw=2)
    plt.plot(x_list, y_list)
    plt.savefig(filename)
if __name__ == '__main__' :
    runge_kutta (1,2,100,30,f1,f2x,f2y,"high_clear.png")
    runge_kutta (1,2,130,10,f1,f2x,f2y,"driven_clear.png")
    runge_kutta (3,3.5,80,-30,f1,f2x,f2y,"smash.png")
