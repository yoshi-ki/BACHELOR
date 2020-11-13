import scipy.linalg as linalg
import numpy as np
import contextlib

A = np.zeros((10,10))
for i in range(10):
    for j in range(10):
        if (i==j) :
            A[i][j] = 1
        if (abs(i-j) == 1):
            A[i][j] = 0.2


inv_A = np.linalg.inv(A)
print("inv_A=")
np.set_printoptions(formatter={'float': '{: 0.3f}'.format})
print(inv_A)

P,L,U = linalg.lu(A)
print("L=")
print(L)
print("U=")
print(U)
