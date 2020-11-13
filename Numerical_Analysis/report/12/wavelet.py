from PIL import Image
import numpy as np
from copy import deepcopy

def log2(n):
    count = 0
    while(1):
        if (n % 2 == 0) :
            count = count + 1
            n = n/2
        else :
            break
    return count

def png_to_array(filename):
    img = Image.open(filename)
    width, height = img.size
    img2 = Image.new('RGB', (width, height))
    img_pixels = np.array([[img.getpixel((i,j)) for j in range(height)] for i in range(width)])
    return (img_pixels, width, height)

def array_to_png(array,width,height,filename):
    img2 = Image.new('RGB', (width, height))
    for x in range(width):
        for y in range(height):
            r,g,b = array[x][y]
            img2.putpixel((x,y), (r,g,b))
    img2.save(filename)
    return 

def get_rgb(array,width,height):
    rs = np.array([])
    gs = np.array([])
    bs = np.array([])
    for x in range(width):
        for y in range(height):
            r,g,b = array[x][y]
            rs = np.append(rs,r)
            gs = np.append(gs,g)
            bs = np.append(bs,b)
    return (rs,gs,bs)

def create_from_rgb(rs,gs,bs,width,height):
    new_array = np.zeros((width,height,3),dtype=int)
    for x in range(width):
        for y in range(height):
            new_array[x][y][0] = rs[x*width+y]
            new_array[x][y][1] = gs[x*width+y]
            new_array[x][y][2] = bs[x*width+y]
    return new_array


def transform(colors,width,height,level):
    new_colors = deepcopy(colors)
    s = int(width/(2**level))
    for x in range(s):
        for y in range(s):
            f00 = colors[x*2 + y*2 * width]
            f10 = colors[x*2 + 1 + y*2 * width]
            f01 = colors[x*2 + (y*2+1) * width]
            f11 = colors[x*2 + 1 + (y*2+1) * width]

            n00 = (f00 + f10 + f01 + f11)/4.0
            n10 = (f00 - f10 + f01 - f11)/4.0
            n01 = (f00 + f10 - f01 - f11)/4.0
            n11 = (f00 - f10 - f01 + f11)/4.0

            new_colors[x + y * width] = n00
            new_colors[x + s + y * width] = n10
            new_colors[x + (y+s) * width] = n01
            new_colors[x+s + (y+s) * width] = n11
    return new_colors


def inv_transform(colors,width,height,level):
    new_colors = deepcopy(colors)
    s = int(width/(2**level))
    for x in range(s):
        for y in range(s):
            n00 = colors[x + y * width]
            n10 = colors[x + s + y * width]
            n01 = colors[x + (y+s) * width]
            n11 = colors[x+s + (y+s) * width]

            f00 = (n00 + n10 + n01 + n11)
            f10 = (n00 - n10 + n01 - n11)
            f01 = (n00 + n10 - n01 - n11)
            f11 = (n00 - n10 - n01 + n11)

            new_colors[x*2 + y*2 * width] = f00
            new_colors[x*2 + 1 + y*2 * width] = f10
            new_colors[x*2 + (y*2+1) * width] = f01
            new_colors[x*2 + 1 + (y*2+1) * width] = f11
    return new_colors


def compress(array,width,height,level):
    compressed = deepcopy(array)
    for i in range(width):
        for j in range(height):
            for k in range(3):
                if (abs(array[i][j][k]) < level):
                    compressed[i][j][k] = 0
    return compressed



if __name__ == "__main__":
    pic_array, width, height = png_to_array("cat.png")
    rs,gs,bs = get_rgb(pic_array,width,height)

    new_rs = transform(rs,width,height,1)
    new_gs = transform(gs,width,height,1)
    new_bs = transform(bs,width,height,1)
    new_pic_array = create_from_rgb(new_rs,new_gs,new_bs,width,height)
    array_to_png(new_pic_array, width, height, "cat_trans.png")

    rs_inv = inv_transform(new_rs,width,height,1)
    gs_inv = inv_transform(new_gs,width,height,1)
    bs_inv = inv_transform(new_bs,width,height,1)
    inv_array = create_from_rgb(rs_inv,gs_inv,bs_inv,width,height)
    array_to_png(inv_array,width,height,"cat_invtrans.png")

    
    l = log2(width)
    for i in range(l):
        rs = transform(rs,width,height,i+1)
        gs = transform(gs,width,height,i+1)
        bs = transform(bs,width,height,i+1)
    transformed_array = create_from_rgb(rs,gs,bs,width,height)
    array_to_png(transformed_array,width,height,"transformed.png")

    for i in range(l):
        rs = inv_transform(rs,width,height,l-i)
        gs = inv_transform(gs,width,height,l-i)
        bs = inv_transform(bs,width,height,l-i)
    inv_array = create_from_rgb(rs,gs,bs,width,height)
    array_to_png(inv_array,width,height,"recovered.png")
    print(np.linalg.norm(inv_array - pic_array))
    
    
    transformed_array = compress(transformed_array,width,height,4)
    rs,gs,bs = get_rgb(transformed_array,width,height)
    for i in range(l):
        rs = inv_transform(rs,width,height,l-i)
        gs = inv_transform(gs,width,height,l-i)
        bs = inv_transform(bs,width,height,l-i)
    inv_array = create_from_rgb(rs,gs,bs,width,height)
    array_to_png(inv_array,width,height,"compressed.png")
    print(np.linalg.norm(inv_array - pic_array))
       




