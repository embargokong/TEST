function [T] = transf_matrix(n)
%Gives a matrix (nxn) used for wavelet-transforming
A = [0.5 0.5];
B = [0.5 -0.5];

T = zeros(n);
for i = 1:n/2
   T(i,2*i-1:2*i) = A;
   T(n/2+i,2*i-1:2*i) = B;
end

end

