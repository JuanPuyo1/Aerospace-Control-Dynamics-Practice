clear all
close all
clc
%%

syms a ro x2 x1 x3 B R 

f = [a*(x2-x1-(-1.16*x1+0.041*x1^3))
     x1-x2+x3
     -B*x2 - R*x3];
g = [0 
    1 
    0];
h = x1;

[u,mu,ga,a,b,MU]=io_fl(f,g,h);