import numpy as np
import random
import numpy.linalg as LA
import matplotlib.pyplot as plt
from sklearn.datasets import load_iris


def generatedata():
    iris = load_iris()
    X = iris.data
    Z = iris.target
    return X,Z

def pca(X,n):
    degree = np.ndim(X)
    XTX = np.dot(X.T,X)
    eigen_values,eigen_vectors = LA.eigh(XTX)
    D = []
    eigen_vectors = eigen_vectors.T
    for i in range(n):
        D.append((1/np.linalg.norm(eigen_vectors[degree-i+1],ord=2)) * eigen_vectors[degree-i+1])
    D = np.array(D)
    X_transform = np.dot(D,X.T)
    return X_transform.T

def two_color(X_transform,Z_transform,ite):
    plt.figure()
    x1 = np.array([])
    y1 = np.array([])
    for i in range(len(X_transform)):
        if (Z_transform[i] == 1):
            x1 = np.append(x1,X_transform[i][0])
            y1 = np.append(y1,X_transform[i][1])
    plt.scatter(x1,y1,color="blue")
    x2 = np.array([])
    y2 = np.array([])
    for i in range(len(X_transform)):
        if (Z_transform[i] == 0):
            x2 = np.append(x2,X_transform[i][0])
            y2 = np.append(y2,X_transform[i][1])
    plt.scatter(x2,y2,color="red")
    plt.savefig("kmeans_step" + str(ite)  +".png")

def kmeans(X,n,iteration):
    #separate X into n groups
    datanum = len(X)
    colors = np.array([],dtype=np.int)
    #中心の初期化
    centers = np.array([[-6,-1],[-6,0]])
    for i in range(iteration):
        #各データへの新しい色付け
        colors = np.array([],dtype=np.int)
        for data in X:
            best = np.Inf
            newcolor = 0
            for j in range(n):
                if (best > np.linalg.norm(centers[j]-data,ord=2)):
                    best = np.linalg.norm(centers[j]-data,ord=2)
                    newcolor = j
            colors = np.append(colors,newcolor)
                
        #---中心の更新---
        centers = np.zeros((len(X[0]),n))
        #数えるためのlistを作る
        howmany = np.zeros(n)
        #平均を取るためのsumのlist
        sum_ = np.zeros((len(X[0]),n))
        for j in range(datanum) :
            data = X[j]
            color = colors[j]
            howmany[color] = howmany[color] + 1
            sum_[color] = sum_[color] + data
        for j in range(n) :
            if (howmany[j] != 0):
                centers[j] = sum_[j]/howmany[j]
            else :
                centers[j] = sum_[j]
        two_color(X_transform,colors,i+1)
    return colors

if __name__ == "__main__":
    X,Z = generatedata()
    X_transform = pca(X,2)
    x = np.array([])
    y = np.array([])
    for i in range(len(X_transform)):
        x = np.append(x,X_transform[i][0])
        y = np.append(y,X_transform[i][1])
    plt.figure()
    plt.scatter(x,y)
    plt.savefig("x_transform.png")
    
    Z_transform = kmeans(X_transform,2,6)
    two_color(X_transform,Z_transform,0)
