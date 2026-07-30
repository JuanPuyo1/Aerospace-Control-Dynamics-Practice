clear all
close all
clc

%%


fun = @(x) x.^2-4.*sin(2*x);

A = [];
b = [];
Aeq = [];
beq = [];

lb = -3;
ub = 3;
x0 = (ub+lb)/2;

x = fmincon(fun,x0,A,b,Aeq,beq,lb,ub)

t = linspace(-3,3,100);
plot(t,fun(t));