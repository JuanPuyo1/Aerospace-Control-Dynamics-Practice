clear all
close all
clc
%%

N = 3;
x(1) = 0;

t = 0.1;
u = [10,10,10];

for k=1:N-1
    x(k+1) = x(k)+t*(u(k)-2*x(k));
end