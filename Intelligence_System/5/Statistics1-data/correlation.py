import math
def correlation (x_list,y_list):
    meanx = 0
    meany = 0
    countx = 0
    county = 0
    for i in x_list :
        meanx = meanx + i
        countx = countx + 1
    meanx = meanx / countx
    for i in y_list :
        meany = meany + i
        county = county + 1
    meany = meany / county
    
    sx = 0
    for xi in x_list:
        sx = sx + (xi-meanx)*(xi-meanx)
    sx = math.sqrt(sx)

    sy = 0
    for yi in y_list:
        sy = sy + (yi-meany)*(yi-meany)
    sy = math.sqrt(sy)

    sxy = 0
    for i in range(countx):
        xi = x_list[i]
        yi = y_list[i]
        sxy = sxy + (xi-meanx)*(yi-meany)

    return sxy/(sx*sy)


if __name__ == '__main__':
    for i in ['1','2','3','4']:
        with open('correlation'+i+'.txt') as openfileobject:
            x_list = []
            y_list = []
            for line in openfileobject:
                x,y = line.split(',')
                x_list.append(float(x))
                y_list.append(float(y))
            print(correlation(x_list,y_list))
