clc; clear all;
A = gallery('rando',10)

spy(A)

p = 2; iter = 10;
s = orth_iter( A, p, iter)
e = eig(A)'