import matplotlib.pyplot as plt
import numpy as np
import math

classic_runge   = [[      0.0,           0,           0,           0,          0],
                   [      0.5,         0.5,           0,           0,          0],
                   [      0.5,         0.0,         0.5,           0,          0],
                   [      1.0,         0.0,         0.0,         1.0,          0],
                   [      0.0,     1.0/6.0,     1.0/3.0,     1.0/3.0,    1.0/6.0]]
def univ_grav (x1,x2,y1,y2,m):
    return -(G * (m/((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2)))*((x1-x2)/math.sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2))))

def f(t,l,m1,m2):
    #l[0] = x1, l[1] = v1x, l[2] = x2, l[3] = v2x,
    #l[4] = y1, l[5] = v1y, l[6] = y2, l[7] = v2y
    nexts = []
    nexts.append(l[1])
    nexts.append(univ_grav(l[0],l[2],l[4],l[6],m2))
    nexts.append(l[3])
    nexts.append(univ_grav(l[2],l[0],l[4],l[6],m1))
    nexts.append(l[5])
    nexts.append(univ_grav(l[4],l[6],l[0],l[2],m2))
    nexts.append(l[7])
    nexts.append(univ_grav(l[6],l[4],l[0],l[2],m1))
    return nexts

def calc_y(butcher,x,h,y,m1,m2):
    #yの入力はlist[x1,vx1,......]
    ks = [] #should be list of tuples
    s = len(butcher)
    for i in range(s-1):
        nx = x + h * butcher[i][0]
        ny = y
        for j in range(i-1):
            ny = [x1 + (h * butcher[i][j+1]) * y1 for [x1, y1] in zip(ny, ks[j])]
            #ny = ny + (h * butcher[i][j+1]) * k_list[j]
        ks.append(f(nx,ny,m1,m2))
    y_new = y
    for i in range(s-1):
        # y_k+1 = y_k + h * sigma ... の部分
        y_new = [x1 + (h * butcher[s-1][i+1]) * y1 for [x1, y1] in zip(y_new, ks[i])]
        #y_new = y_new + h * butcher[s-1][i+1] * k_list[i]
    return y_new

def runge_kutta(x,ys,m1,m2):
    iteration = 100000
    h = 0.0005
    x1_list = []
    y1_list = []
    x2_list = []
    y2_list = []
    for i in range(iteration):
        nexty1 = calc_y(classic_runge,x,h,ys,m1,m2)
        ys = nexty1
        x1_list.append(nexty1[0])
        y1_list.append(nexty1[4])
        x2_list.append(nexty1[2])
        y2_list.append(nexty1[6])
    plt.plot(x1_list, y1_list)
    plt.plot(x2_list, y2_list)
    plt.savefig("runge1.png")

if __name__ == '__main__':
    #runge_kutta(t,[x1,vx1,x2,vx2,y1,vy1,y2,vy2])
    G = 8.4
    runge_kutta(0,[1.0, 0.0, -1.0, 0.0, 0.0,  1.0,  0.0,  -2.0],1.0,1.0)
