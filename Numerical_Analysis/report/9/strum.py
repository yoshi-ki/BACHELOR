import numpy as np
import numpy.linalg as LA

def strum (n):
    A = np.zeros((n,n))
    for i in range(n):
        for j in range(n):
            if (abs(i-j) == 1):
                A[i][j] = 1
            elif (i == j):
                A[i][j] = i + 1
            else :
                A[i][j] = 0
    np.set_printoptions(formatter={'float': '{: 0.3f}'.format})
    eigen_values = LA.eigvalsh(A)
    I = np.zeros((n,n))
    for i in range(n):
        for j in range(n):
            if (i == j) :
                I[i][j] = 1
    for i in range(len(eigen_values)):
        lamb = eigen_values[i]
        print("固有値は",lamb)
        print("これ未満の固有値の数は",i,"個")
        B = A - lamb * I
        count = 0
        before = 1
        for j in range(n):
            if (j == n) :
                break
            after = LA.det(B[0:(j),0:(j)])
            if (after * before < 0):
                count = count + 1
            before = after
        print("符号変化の数は",count,"個")
        print("")

if __name__ == "__main__":
    strum (10)
