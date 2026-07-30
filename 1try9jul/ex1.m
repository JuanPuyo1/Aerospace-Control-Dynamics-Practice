clear all
close all
clc

%%

syms x1 x2 x3 x4

f = [x1^2 + 2*x4
     x3^2 - x1
     x1*x4 - 0.5*x4
     x2 + 0.2*x4];
g = [0
    1
    0
    0];
h = x1;

[u,mu,ga,a,b,MU]=io_fl(f,g,h);
