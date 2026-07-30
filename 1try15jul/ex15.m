clear all
close all
clc

%%
J = diag([70000, 5900, 9600]);
IJ = inv(J);

q0 = [1;0;0;0];
w0 = [0;0;0];

qr = [-0.06845, -0.5572, 0.8257, -0.05345]';

open("ex15imppdcon15.slx");
out = sim("ex15imppdcon15");

plot(out.simout.Data);