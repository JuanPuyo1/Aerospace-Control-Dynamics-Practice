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
x0 = (ub+lb)/2;
x = fmincon(fun,x0,A,b,Aeq,beq,lb,ub)

t = linspace(-6,6,100);
plot(t,fun(t));