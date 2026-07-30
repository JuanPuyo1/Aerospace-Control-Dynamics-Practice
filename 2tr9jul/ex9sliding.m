clear all
close all
clc

%%

syms x1 x2

f = [x2;
    -0.2*x1^3+x1-3*x2];
g = [0;-1];
h = x1;

[u,mu,ga,a,b,MU]=io_fl(f,g,h);
