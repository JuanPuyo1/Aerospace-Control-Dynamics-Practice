clear all
close all
clc

%%

syms x1 x2

eq1 = 5 - 6*x1 + x2 == 0;
eq2 = x1^2 - x2 - 5 == 0;

sol = solve([eq1,eq2],[x1,x2]);
