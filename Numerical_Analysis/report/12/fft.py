import numpy as np
import time
import matplotlib.pyplot as plt


def naive_calc(p,k):
    ws = np.array([],dtype=complex)
    for i in range(len(p)):
        w_i = np.exp(-2*np.pi*(i*1j)/k)
        ws = np.append(ws,w_i)
    ps = np.array([],dtype=complex)
    for i in range(len(p)):
        sumofp = complex(0.)
        for l in range(len(p)):
            w_i = ws[i] ** l
            sumofp = sumofp + w_i * p[l]
        ps = np.append(ps,sumofp)
    return ps


def fft_calc(p,ws):
    if (len(p) == 1):
        ps = np.array([complex(p[0] * ws[0])],dtype=complex)
    else :
        ps = np.empty(len(ws),dtype=complex)
        half_h = int(len(ws)/2)
        q = p[::2]
        s = p[1::2]
        qs = fft_calc(q,ws[::2])
        ss = fft_calc(s,ws[::2])
        for i in range(half_h):
            ps[i] = complex(qs[i] + ws[i] * ss[i])
        for i in range(half_h):
            ps[half_h+i] = complex(qs[i] - ws[i] * ss[i])
    return ps

def fft(p,k):
    ws = np.array([],dtype=complex)
    for i in range(len(p)):
        w_i = np.exp(-2*np.pi*(i*1j)/k)
        ws = np.append(ws,w_i)
    return fft_calc(p,ws)


def create_array(k):
    array = np.zeros(k,dtype=complex)
    for i in range(k):
        a = np.random.rand()
        b = np.random.rand()
        array[i] = a + b * 1j
    return array



if __name__ == "__main__" :
    fft_time = []
    naive_time = []
    for i in range(15):
        print("K = ", i)
        K = 2 ** i
        a = create_array(K)
        start = time.time()
        p1 = fft(a,K)
        elapsed_time = time.time() - start
        fft_time.append(elapsed_time)
        print ("fft_time:{0}".format(elapsed_time) + "[sec]")    
        start = time.time()
        p2 = naive_calc(a,K)
        elapsed_time = time.time() - start
        naive_time.append(elapsed_time)
        print ("naive_time:{0}".format(elapsed_time) + "[sec]")
        print ("diff is ", np.linalg.norm(p1 - p2, ord = 2))
        print ("")

    plt.figure()
    plt.figure(figsize=(8,8))
    plt.plot(np.log2(fft_time),label="fft")
    plt.plot(np.log2(naive_time),label="naive")
    plt.axes().set_aspect('equal', 'datalim')
    plt.legend()
    plt.savefig("compare_time.png")



