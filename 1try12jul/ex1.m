clear all
close all
clc

%%

syms x1 x2

f = [x2;
    -x2-sin(x1)];

J = jacobian(f,[x1,x2]);

df = [0;0];


A = [0 1
     -cos(0) -1];

[eig,eigv] = eig(A);

V = 2*(1-cos(x1)) + (x2^2+(x1+x2)*2)/2;

Vdot = gradient(V,[x1,x2])'*f;

figure
fsurf(V)


figure
fsurf(Vdot);