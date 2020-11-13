#AOJの長方形の問題
#Rectangle
#http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ITP1_1_C&lang=jp
#着席位置　中央、中央
a,b = map(int, input().strip().split(' '))
area = a*b
length = 2*(a+b)
print("%d %d" % (area, length))
