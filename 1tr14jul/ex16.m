clear all
close all
clc

%%

J = diag([7000,5900,9600]);
IJ = inv(J);

q0 = [1;0;0;0];
w0 = [0;0;0];

qr = [-0.068, -0.557, 0.825, -0.053]';

wr = [1;0;0];

open("ex14impsliding4.slx");
sim("ex14impsliding4");