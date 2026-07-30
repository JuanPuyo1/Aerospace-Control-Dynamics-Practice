clear all
close all
clc

%%

J = diag([7000,5900,9600]);
IJ = inv(J);

q0 = [1;0;0;0];
w0 = [0;0;0];
qr = [-0.068456,-0.55729,0.82576,-0.053478]';

open("ex42imppdcon.slx");
out = sim("ex42imppdcon");
plot(out.simout.Data);