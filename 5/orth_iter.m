function [ s ] = orth_iter(A,p,iter)
%Calculates the p largest eigenvalues of A (with it iterations),
%using the orthogonal iteration method. Returns a row vector with the 
% values in decreasing order.
n = size(A,1);
I = eye(n);
X = I(:,1:p);

for i=1:iter
    
    X = A*orth(X)
end

s = zeros(1,p);
for i=1:p
    s(i) = (X(:,i)'*A*X(:,i))/(X(:,i)'*X(:,i));
end

end

