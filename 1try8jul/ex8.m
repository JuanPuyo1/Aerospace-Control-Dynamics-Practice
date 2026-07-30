clear all
close all
clc

%%

fun = @(x) x.*sin(x)+1;

lb = [-6];
ub = [6];

A = [];
b = [];
Aeq = [];
beq = [];

x0 = (lb + ub)/2;

x = fmincon(fun,x0,A,b,Aeq,beq,lb,ub);


t = linspace(-6,6);


figure
grid on
hold on
for i=t(1):t(end)
    y = fun(t);
    plot(y);

end