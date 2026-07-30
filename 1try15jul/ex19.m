clear all
close all
clc


%%

syms x1 x2

f = [6*x1-4+x2;
    2.5*x1^2-x1+7*x2-3];

J = jacobian(f,[x1,x2]);

sol = subs(J,[x1,x2],[16.6,-95.58]);

[eig,eigv] = eig(double(sol));