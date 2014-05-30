clc; clf; clear all

i = [1 1 2 2 3 4 4 5 5];
j = [2 5 3 4 1 1 5 2 4];
A = sparse(i,j,ones(size(i)));

k = 1;
B = A;
while nnz(B) < 25
    B = B + B * A;
    k = k + 1;
end

disp(k); 

%% f

clc; clf; clear all

i = [1 1 2 2 3 4 4 5];
j = [2 5 3 4 1 1 5 4];
A = sparse(i,j,ones(size(i)));

k = 1;
B = A;
while nnz(B) < 25
    B = B + B * A;
    k = k + 1;
end

disp(k); 

%% g
clc; clf; clear all

i = [1 1 1 2 2 3 4 4 5 5];
j = [2 3 5 3 4 1 1 5 2 4];
A = sparse(i,j,ones(size(i)));

full(A)
full(A + A*A)