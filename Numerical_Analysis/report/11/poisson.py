import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

def solve_sor (A,b,w):
    n = len(A)
    x = np.zeros((n,1))
    count = 0
    while(1):
        count = count + 1
        for i in range(n):
            s = 0
            s = np.dot(A[i],x)
            s = s - A[i][i] * x[i]
            x_new = (-s + b[i])/A[i][i]
            x[i] = w * x_new + (1 - w) * x[i]
        if((np.linalg.norm(b-(np.dot(A,x)).reshape(len(b)), ord=2)/np.linalg.norm(b, ord=2)) < 0.001):
            break
    return ( x, count )

def u(x,y):
    return (x-1/2)**2 + (y-1/2)**2

def f(x,y):
    return -4

def solve_poisson (n):
    division_num = n-1
    h = 1/n

    #create A
    A_size = division_num * division_num
    A = np.zeros((A_size,A_size))
    for i in range(A_size):
        for j in range(A_size):
            if(i == j):
                A[i][j] = 4
            elif(abs(i-j) == division_num):
                A[i][j] = -1
    for i in range(A_size-1):
        if (i % division_num != division_num - 1):
            A[i+0][i+1] = -1
            A[i+1][i+0] = -1
    A = n * n * A

    #calculate u_edge
    u_edge = np.zeros(A_size)
    for i in range(division_num):
        if (i == 0):
            for j in range(division_num):
                if j == 0:
                    u_edge[i] =(u(1*h,0*h)+u(0*h,1*h))
                elif j == division_num-1 :
                    u_edge[i + j] = (u(1*h,(n*h))+u(0*h,(j+1)*h))
                else :
                    u_edge[i + j] = u(0*h,(j+1)*h)
        elif (i == division_num-1):
            for j in range(division_num):
                if j == 0:
                    u_edge[i*division_num] = (u((i+1)*h,0*h)+u(n*h,1*h))
                elif j == division_num-1 :
                    u_edge[i*division_num + j] = (u((j+1)*h,(n*h))+u(n*h,(j+1)*h))
                else :
                    u_edge[i*division_num + j] = u(n*h,(j+1)*h)
        else:
            u_edge[i*division_num] = u((i+1)*h,(0*h))
            u_edge[(i+1)*division_num - 1] = u((i+1)*h,(n*h))

    #calculate b
    b = np.zeros(A_size)
    for k in range(A_size):
        i = k/4 + 1
        j = k%4 + 1
        b[k] = f(i*h,j*h)
    b = b + n * n * u_edge

    #using sor method, obtain u
    u_vec,count = solve_sor(A,b,0.4)

    r = (np.linalg.norm(b-(np.dot(A,u_vec)).reshape(len(b)), ord=2))

    return (u_vec.reshape((division_num,division_num)),count,r)

if __name__ == "__main__" :
    #compare
    h_list = []
    r_list = []
    count_list = []
    syuusoku_list = []
    for n in range(37):
        if n < 5 or n % 4 != 1:
            continue
        print ("n = ",n)
        h_list.append(1/(n+1))
        u_app, count, r = solve_poisson(n)
        print("r = ",r/((n-1)^2))
        r_list.append(r/((n-1)^2))
        print("repeated ", count, " times")
        count_list.append(count)
        print("")
        m = n-1
        u1 = np.zeros(m*m)
        X = np.array([])
        Y = np.array([])
        for k in range(m*m):
            i = int(k/m) + 1
            j = k%m + 1
            X = np.append(X,i*(1/(1+m)))
            Y = np.append(Y,j*(1/(1+m)))
            u1[k] = u(i*(1/(1+m)),j*(1/(1+m)))
        syuusoku_list.append((u(0.5,0.5) - u_app[int(n/2)][int(n/2)])**2 + (u(0.25,0.25) - u_app[int(n/4)][int(n/4)])**2 + (u(0.25,0.5) - u_app[int(n/4)][int(n/2)])**2)
    plt.figure()
    plt.plot(h_list,r_list)
    plt.savefig("r.png")
    plt.figure()
    plt.plot(h_list,count_list)
    plt.savefig("count.png")
    plt.figure()
    plt.plot(h_list,syuusoku_list)
    plt.savefig("syuusoku.png")


    '''
    # draw graph
    for n in [25]:
        u_app = solve_poisson(n)
        m = n-1
        u1 = np.zeros(m*m)
        X = np.array([])
        Y = np.array([])
        for k in range(m*m):
            i = int(k/m) + 1
            j = k%m + 1
            X = np.append(X,i*(1/(1+m)))
            Y = np.append(Y,j*(1/(1+m)))
            u1[k] = u(i*(1/(1+m)),j*(1/(1+m)))
        fig = plt.figure()
        ax = fig.add_subplot(111, projection="3d")
        ax.set_xlabel("x")
        ax.set_ylabel("y")
        ax.set_zlabel("u(x, y)")
        ax.plot_surface(X.reshape(m,m), Y.reshape(m,m), u_app.reshape(m,m),cmap = "summer")
        plt.savefig("poisson.png")
    '''




