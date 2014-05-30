clc; figure(1); clf; clear all;
f = @(x) exp(x) .* cos(pi*x);
n = 32;
eps = 1;

x = linspace(0,3,n)';
smooth = linspace(0,3,200);

v = f(x);
w = my_wavelet(v,eps);
y = de_wavelet(w);

plot(smooth,f(smooth),'r',x,y,'bx');
disp(nnz(w)/nnz(v));

%%
clc; figure(2); clf; clear all;
f = @(x) exp(x) .* acos(x/3);
n = 32;
eps = 1;

x = linspace(0,3,n)';
smooth = linspace(0,3,200);

v = f(x);
w = my_wavelet(v,eps);
y = de_wavelet(w);

plot(smooth,f(smooth),'r',x,y,'bx');
disp(nnz(w)/nnz(v));