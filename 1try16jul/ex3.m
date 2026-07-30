clear all
close all
clc

%%

J = diag([7000,11800,6300]);
IJ = inv(J);

q0 = [1;0;0;0];
w0 = [0;0;0];
qr = [-0.64102,0.3408,0.13318,0.67469]';

open("ex3imppdcon16.slx");
out = sim("ex3imppdcon16");
plot(out.simout.Data);