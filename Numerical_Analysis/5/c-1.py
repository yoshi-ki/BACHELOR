import numpy as np
from numpy import linalg as LA

def create_hilbert(n):
    A = np.zeros((n,n))
    for i in range(n):
        for j in range(n):
            A[i][j] = 1/(i+j+1)
    return A

def search_max_ij(A):
    n = len(A)
    max_ingre = 0
    max_index_i = 0
    max_index_j = 0
    for i in range(n):
        for j in range(n):
            if (i > j):
                if(max_ingre < np.fabs(A[i][j])):
                    max_index_i = i
                    max_index_j = j
                    max_ingre = np.fabs(A[i][j])
    if max_ingre < 0.00001 :
        return (0,0)
    else :
        return (max_index_i,max_index_j)

def eig (A,iteration) :
    n = len(A)
    V = np.zeros((n,n))
    for i in range(n):
        for j in range(n):
            if (i == j) :
                V[i][j] = 1
            else :
                V[i][j] = 0
    for ite in range(iteration):
        i_axis,j_axis = search_max_ij(A)
        if ((i_axis,j_axis) == (0,0)):
            break
        else :
            theta = np.arctan(2*A[i_axis][j_axis]/(A[i_axis][i_axis]-A[j_axis][j_axis]))/2
            Q = np.zeros((len(A),len(A)))
            for i in range(n):
                for j in range(n):
                    if (i == j):
                        Q[i][j] = 1
                    else :
                        Q[i][j] = 0
            Q[i_axis][i_axis] = np.cos(theta)
            Q[i_axis][j_axis] = np.sin(theta)
            Q[j_axis][i_axis] = -np.sin(theta)
            Q[j_axis][j_axis] = np.cos(theta)
            A = np.dot(Q,np.dot(A,Q.T))
            V = np.dot(Q,V)
    return (A, V.T)

if __name__ == "__main__" :
    A = create_hilbert(6)
    values, vectors = LA.eigh(A)
    np.set_printoptions(formatter={'float': '{: 0.5f}'.format})
    print(vectors)
    print(values)
    A_new, eigen_vectors = eig(A,100)
    print(eigen_vectors)
    print(A_new)
