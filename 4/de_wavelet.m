function [v] = de_wavelet(w)
%"Reverses" wavelet-transforms.

n = size(w,1);
AX = zeros(n,n,n/2-1);
A = eye(n);
for i=1:log2(n)
    AX(:,:,i) = eye(n);
    m = n/(2^(i-1));
    AX(1:m,1:m,i) = transf_matrix(m);
    A = AX(:,:,i) * A;
end

v = A\w;
end

