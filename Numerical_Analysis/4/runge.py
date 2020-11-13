import matplotlib.pyplot as plt
import numpy as np
import math

umekomi_runge4  = [[       0.0,              0,               0,              0,               0,          0,        0],
                   [      0.25,           0.25,               0,              0,               0,          0,        0],
                   [     0.375,       3.0/32.0,        9.0/32.0,              0,               0,          0,        0],
                   [ 12.0/13.0,  1932.0/2197.0,  -7200.0/2197.0,  7296.0/2197.0,               0,          0,        0],
                   [       1.0,    439.0/216.0,            -8.0,   3680.0/513.0,   -845.0/4104.0,          0,        0],
                   [   1.0/2.0,      -8.0/27.0,             2.0, -3544.0/2565.0,   1859.0/4104.0, -11.0/40.0,        0],
                   [         0,     25.0/216.0,             0.0,  1408.0/2565.0,   2197.0/4104.0,   -1.0/5.0,      0.0]]

umekomi_runge5  = [[       0.0,              0,               0,              0,               0,          0,        0],
                   [      0.25,           0.25,               0,              0,               0,          0,        0],
                   [     0.375,       3.0/32.0,        9.0/32.0,              0,               0,          0,        0],
                   [ 12.0/13.0,  1932.0/2197.0,  -7200.0/2197.0,  7296.0/2197.0,               0,          0,        0],
                   [       1.0,    439.0/216.0,            -8.0,   3680.0/513.0,   -845.0/4104.0,          0,        0],
                   [   1.0/2.0,      -8.0/27.0,             2.0, -3544.0/2565.0,   1859.0/4104.0, -11.0/40.0,        0],
                   [         0,     16.0/135.0,             0.0, 6656.0/12825.0, 28561.0/56430.0,  -9.0/50.0, 2.0/55.0]]


def f(x,y):
    #y[0] = y, y[1] = g
    return [y[1],math.cos(x)-2*y[0]-3*y[1]]

def calc_y(butcher,x,h,y):
    #yの入力はlist[y,g]
    ks = [] #should be list of tuples
    s = len(butcher)
    for i in range(s-1):
        nx = x + h * butcher[i][0]
        ny = y
        for j in range(i-1):
            ny = [x1 + (h * butcher[i][j+1]) * y1 for [x1, y1] in zip(ny, ks[j])]
            #ny = ny + (h * butcher[i][j+1]) * k_list[j]
        ks.append(f(nx,ny))
    y_new = y
    for i in range(s-1):
        # y_k+1 = y_k + h * sigma ... の部分
        y_new = [x1 + (h * butcher[s-1][i+1]) * y1 for [x1, y1] in zip(y_new, ks[i])]
        #y_new = y_new + h * butcher[s-1][i+1] * k_list[i]
    return y_new

def runge_kutta(x,ys):
    iteration = 100000
    h = 0.01
    alpha = 0.8
    p = 5
    epsilon = 0.00001
    x_list = []
    y_list = []
    h_list = []
    for i in range(iteration):
        nexty1 = calc_y(umekomi_runge4,x,h,ys)
        nexty2 = calc_y(umekomi_runge5,x,h,ys)
        T = nexty1[0] - nexty2[0]
        if (abs(T) >= epsilon) :
            #刻み幅を半分にしてやり直す
            x = x - h/2
            h = h/2
            i = i - 1
        else :
            ys=nexty1
            h = alpha*h*((epsilon/abs(T))**(1/5))
            h_list.append(h)
            x = x + h
            x_list.append(x)
            y_list.append(ys[0])
    fig = plt.figure(figsize=(10,8))
    ax1 = plt.subplot2grid((2,2), (0,0))
    ax2 = plt.subplot2grid((2,2), (0,1))
    ax3 = plt.subplot2grid((2,2), (1,0))
    ax4 = plt.subplot2grid((2,2), (1,1))

    ax1.plot(x_list, y_list)
    ax1.set_title('rungekutta')
    ax1.set_xlabel('x')
    ax1.set_ylabel('y')
    ax1.set_xlim(0, 2*np.pi)
    ax1.grid(True)

    x2 = np.arange(0,100,0.1)
    y2 = - (1/(2*np.exp(x2))) + 2/(5*np.exp(2*x2)) + 3*np.sin(x2)/10 + np.cos(x2)/10
    ax2.plot(x2, y2)
    ax2.set_title('kaiseki')
    ax2.set_xlabel('x')
    ax2.set_ylabel('y')
    ax2.set_xlim(0, 2*np.pi)
    ax2.grid(True)

    ax3.plot(x_list, y_list,label='runge')
    ax3.plot(x2, y2,label='kaiseki')
    ax3.set_title('compare')
    ax3.legend()
    ax3.set_xlabel('x')
    ax3.set_ylabel('y')
    ax3.set_xlim(0, 2*np.pi)
    ax3.grid(True)
    
    ax4.plot(x_list, y_list,label='runge')
    ax4.plot(x_list,h_list,label='h')
    ax4.set_title('value of h')
    ax4.set_xlabel('x')
    ax4.set_ylabel('h')
    ax4.set_xlim(0, 2*np.pi)
    ax4.legend()
    ax4.grid(True)

    fig.show()
    plt.savefig("result.png")
if __name__ == '__main__':
    #runge_kutta(x,[y,g])
    runge_kutta(0,[0,0])
