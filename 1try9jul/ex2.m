clear all
close all
clc

%%


N = 5;
y(1) = -1.5;
y(2) = 2.5;

u = [-1, 2.75, -3, 2.25];

for k=2:N-1
    y(k+1) = 0.5*y(k) + 3.5*y(k-1) - 2*u(k)^2 + 3.5*u(k-1);
end

