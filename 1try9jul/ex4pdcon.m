clear all
close all
clc

%%


J = diag([7300, 7000, 3800]);
IJ = inv(J);

q0 = [1;0;0;0];
w0 = [0;0;0];

qr = [-0.57352
    0.2597
    -0.17056
    0.75798];


open("ex4pdimp.slx");
out = sim("ex4pdimp");

figure
hold on
plot(out.err.Data);