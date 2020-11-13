import numpy as np
import scipy.linalg as linalg
import contextlib

def create_hilbert(n):
    A = np.zeros((n,n))
    for i in range(n):
        for j in range(n):
            A[i][j] = 1/(i+j+1)
    return A

def pivot_change(A,i,P):
    maxindex = i
    for j in range (i,len(A)):
        if (abs(A[j][i]) > abs(A[maxindex][i])):
            maxindex = j
    a = np.copy(A[i])
    A[i] = A[maxindex]
    A[maxindex] = a
    if (i != maxindex):
        P_ = np.zeros((len(A),len(A)))
        for fi in range(len(A)):
            for fj in range(len(A)):
                if (fi == fj):
                    P_[fi][fj] = 1
        P_[i][i] = 0
        P_[maxindex][maxindex] = 0
        P_[i][maxindex] = 1
        P_[maxindex][i] = 1
        P[:][:] = P_.dot(P)


def lu_decomposition (A) :
    P = np.zeros((len(A),len(A)))
    for i in range(len(A)):
        for j in range(len(A)):
            if (i == j) :
                P[i][j] = 1
    for i in range(len(A)):
        pivot_change(A,i,P)
        u_ii = A[i][i]
        for j in range(i+1,len(A)):
            A[j][i] = A[j][i] / u_ii
            for k in range(i+1,len(A)):
                A[j][k] = - A[j][i] * A[i][k] + A[j][k]
    L = np.zeros((len(A),len(A)))
    for i in range(len(A)):
        for j in range(len(A)):
            if (i == j) :
                L[i][j] = 1
            elif (i > j):
                L[i][j] = A[i][j]
    U = np.zeros((len(A),len(A)))
    for i in range(len(A)):
        for j in range(len(A)):
            if (i == j) :
                U[i][j] = A[i][j]
            elif (i < j) :
                U[i][j] = A[i][j]
    return (L, U, P)

if __name__ == "__main__" :
    A = create_hilbert(6)
    L,U,P = lu_decomposition(A)
    np.set_printoptions(formatter={'float': '{: 0.5f}'.format})
    print("L = ")
    print(L)
    print("U = ")
    print(U)
    print("P = ")
    print(P)
    print("PA = ")
    print(P.dot(create_hilbert(6)))
    print("LU = ")
    print(L.dot(U))
