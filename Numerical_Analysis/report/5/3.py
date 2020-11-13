#ヒルベルト行列のcondition numberを求める

import scipy.linalg as linalg
import numpy as np
from numpy import linalg as LA

def calc_hilbert_condition(n):
    A = np.zeros((n,n))
    for i in range(n):
        for j in range(n):
            A[i][j] = 1/(i+j+1)
    print("matrix size =", n)
    print("condition number is", LA.cond(A, 2))
if __name__ == "__main__":
    calc_hilbert_condition(3)
    calc_hilbert_condition(6)
    calc_hilbert_condition(9)
