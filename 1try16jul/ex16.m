clear all
close all
clc

%%

syms x1 x2

f = [x2;
    -x2-sin(x1)];

V = 2*(1-cos(x1))+(x2^2+(x1+x2)^2)/2;

Vdot = gradient(V,[x1,x2])'*f;

sol = subs(Vdot,[x1,x2],[0,0]);

figure
fsurf(V, [-2 2 -2 2]); 
title('V(x) - Should be a bowl pointing UP');

figure
fsurf(Vdot, [-2 2 -2 2]);
title('Vdot(x) - Should be a bowl pointing DOWN');
