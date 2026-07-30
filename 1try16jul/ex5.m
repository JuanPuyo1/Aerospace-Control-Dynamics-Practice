clear all
close all
clc

%%

N=5;
y(1)=5;
y(2)=0;
u = [-1.75,-3.25,-3.25,-2];

for k=2:N-1
    y(k+1)=-0.5*y(k)+3*y(k-1)+2.5*u(k)^2-4*u(k-1);
end