import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from scipy import sparse

def solve_cg (A,b):
    n = len(A)
    As = sparse.csr_matrix(A)
    x = np.zeros(n)
    r = (b - (As * x.T).T)
    #r = (b - np.dot(A,x.T).T)
    p = r
    count = 0
    count_list = []
    r_list = []
    while(1):
        count = count + 1
        Ap = As * p.T
        #Ap = np.dot(A,p.T)
        alpha = (np.dot(r,r.T)/np.dot(p,Ap.T))
        x = x + alpha * p
        r_new = r - alpha * Ap
        beta = np.dot(r_new.T,r_new)/np.dot(r.T,r)
        p = r_new + beta * p
        r = r_new
        if((np.linalg.norm(b-(np.dot(A,x)).reshape(len(b)), ord=2)/np.linalg.norm(b, ord=2)) < 0.00000000000001):
            break
        count_list.append(count)
        r_list.append((np.linalg.norm(b-(np.dot(A,x)).reshape(len(b)), ord=2)/np.linalg.norm(b, ord=2)))
    '''
    plt.figure()
    plt.plot()
    plt.plot(count_list,r_list)
    plt.savefig("cgmethod.png")
    '''
    return (x,count)

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
    u_vec,count = solve_cg(A,b)

    r = (np.linalg.norm(b-(np.dot(A,u_vec)).reshape(len(b)), ord=2))


    return (u_vec.reshape((division_num,division_num)),count,r)

if __name__ == "__main__" :
    
    #compare
    h_list = []
    count_list = []
    
    for n in range(36):
        if n < 5 :
            continue
        print ("n = ",n)
        h_list.append(1/(n+1))
        u_app, count, r = solve_poisson(n)
        print("r = ",r/((n-1)^2))
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
    plt.figure()
    plt.plot(h_list,count_list)
    plt.savefig("count.png")
    
    '''
    # draw graph
    for n in [100]:
        u_app,count,r = solve_poisson(n)
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
        print(np.linalg.norm(u_app.reshape(m*m,) - u1,ord = 2))
        fig = plt.figure()
        ax = fig.add_subplot(111, projection="3d")
        ax.set_xlabel("x")
        ax.set_ylabel("y")
        ax.set_zlabel("u(x, y)")
        ax.plot_surface(X.reshape(m,m), Y.reshape(m,m), u_app.reshape(m,m),cmap = "summer")
        plt.savefig("poisson.png")
    '''
    
