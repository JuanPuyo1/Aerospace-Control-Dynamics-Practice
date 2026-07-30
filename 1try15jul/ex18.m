clear all
close all
clc

%%

J = diag([7000,5900,9600]);
IJ = inv(J);

q0 = [1;0;0;0];
w0 = [0;0;0];

qr = [-.068456,-.55729,0.82576,-.053478]';

open("ex18impcppdcon.slx");
out = sim("ex18impcppdcon");

plot(out.simout.Data);
