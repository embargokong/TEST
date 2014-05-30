function [w] = my_wavelet(v,eps)
%Wavelet-transform of v (column vector) with 2^n rows 
%(for some natural number n), tolerance eps

n = size(v,1);
AX = zeros(n,n,n/2-1);
A = eye(n);
for i=1:log2(n)
    AX(:,:,i) = eye(n);
    m = n/(2^(i-1));
    AX(1:m,1:m,i) = transf_matrix(m);
    A = AX(:,:,i) * A;
end

w1 = A * v;
w = zeros(n,1);
w(1:n/2) = w1(1:n/2);
for i=n/2+1:n
    if abs(w1(i)) > eps
       w(i) = w1(i); 
    end
end

w = sparse(w);
end

