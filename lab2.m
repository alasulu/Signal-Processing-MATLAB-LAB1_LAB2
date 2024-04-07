clear
clc
% 3.1 Vectorization
N = 200;
xk = (1:N)/60;
sig = exp(j*2*pi*(sqrt(xk.^2-1)));
plot(xk,real(sig),'mo-', xk, imag(sig), 'go-')
