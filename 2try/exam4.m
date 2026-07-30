clear all
close all
clc

%%

syms x1 x2

eq1 = 5- 7*x1 + x2 == 0;
eq2 = 3*x1^2 - x2 - 5 == 0;

sol = solve([eq1,eq2],[x1,x2]);

x1v = double(sol.x1);
x2v = double(sol.x2);