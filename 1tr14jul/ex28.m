clear all
close all
clc

%%


fun = @(x) x.*sin(x)+1;

A = [];
b = [];
Aeq = [];
beq = [];

lb = -6;
ub = 6;
x0 = -6;
x02 = 6;

x = fmincon(fun,x0,A,b,Aeq,beq,lb,ub)
x2 = fmincon(fun,x02,A,b,Aeq,beq,lb,ub)

y = fun(x);

t = linspace(-6,6,100);
plot(t,fun(t));