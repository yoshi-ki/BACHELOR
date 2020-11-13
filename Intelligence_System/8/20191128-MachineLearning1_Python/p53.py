from __future__ import division
from __future__ import print_function

import numpy as np
import matplotlib

matplotlib.use('TkAgg')
import matplotlib.pyplot as plt

np.random.seed(0)  # set the random seed for reproducibility


def generate_sample(xmin, xmax, sample_size):
    x = np.linspace(start=xmin, stop=xmax, num=sample_size)
    pix = np.pi * x
    target = np.sin(pix) / pix + 0.1 * x
    noise = 0.05 * np.random.normal(loc=0., scale=1., size=sample_size)
    return x, target + noise


def calc_design_matrix(x, c, h):
    return np.exp(-(x[None] - c[:, None]) ** 2 / (2 * h ** 2))

def shuffle_two_array(x,y):
    shuffled_x = np.array([])
    shuffled_y = np.array([])
    permutation = np.random.permutation(len(x))
    for i in permutation:
        shuffled_x = np.append(shuffled_x,x[i])
        shuffled_y = np.append(shuffled_y,y[i])
    return (shuffled_x,shuffled_y)

def cross_validation (num,x,y) :
    best_l = None
    best_h = None
    shuffled_x,shuffled_y = shuffle_two_array(x,y)
    x_c = np.array_split(shuffled_x, num)
    y_c = np.array_split(shuffled_y, num)
    best_validation = np.inf
    for i in range(10):
        l = 10 ** (4-i)
        for j in range(10):
            h = 10 ** (4-j)
            validation_value = 0
            for n in range (num):
                x_train = np.array([])
                for le in range(len(x_c)):
                    if(le != n):
                        x_train = np.append(x_train,x_c[le])
                y_train = np.array([])
                for le in range(len(y_c)):
                    if(le != n):
                        y_train = np.append(y_train,y_c[le])
                x_test = x_c[n]
                y_test = y_c[n]
                k = calc_design_matrix(x_train, x_train, h)
                theta = np.linalg.solve(
                    k.T.dot(k) + l * np.identity(len(k)),
                    k.T.dot(y_train[:, None]))
                k_test = calc_design_matrix(x_train, x_test, h)
                pred_list = k_test.dot(theta)
                validation_value = validation_value + np.sum((y_test - pred_list.T) ** 2)
            validation_value = validation_value / num
            if (validation_value < best_validation) :
                best_validation = validation_value
                best_l = l
                best_h = h
    return (best_l,best_h)



# create sample
sample_size = 50
xmin, xmax = -3, 3
x, y = generate_sample(xmin=xmin, xmax=xmax, sample_size=sample_size)

# k-fold cross-validation
best_l, best_h = None, None

# --- implement here ---

best_l,best_h = cross_validation(5,x,y)


# --- end implement ---

print('Best (l, h): ({}, {})'.format(best_l, best_h))

#
# visualization
#

# calculate design matrix
k = calc_design_matrix(x, x, best_h)

# solve the least square problem
theta = np.linalg.solve(
    k.T.dot(k) + best_l * np.identity(len(k)),
    k.T.dot(y[:, None]))

# create data to visualize the prediction
X = np.linspace(start=xmin, stop=xmax, num=5000)
K = calc_design_matrix(x, X, best_h)
prediction = K.dot(theta)

plt.clf()
plt.scatter(x, y, c='green', marker='o')
plt.plot(X, prediction)
plt.savefig('ML1-homework1.png')
