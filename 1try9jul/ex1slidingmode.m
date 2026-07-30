clear all
close all
clc

%%


J = diag([10400, 8200, 9200]);
IJ = inv(J);

q0 = [0.68438
     -0.56827
     -0.10002
     -044574];
w0 = [0;0;0];

qr = [0;1;0;0];

wr = [1;0;0];


open("ex1slidingimp.slx");
out = sim("ex1slidingimp");