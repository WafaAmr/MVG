A = skew([2,4,6]')
[U, S,V] = svd(A)
eig(A)
B = [1,2,3;2,1,4;3,4,1]
[U, S,V] = svd(B)
eig(B)