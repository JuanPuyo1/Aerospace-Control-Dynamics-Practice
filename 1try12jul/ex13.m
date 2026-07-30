clear all
close all
clc

%%

J = diag([10400, 8200, 9200]);
IJ = inv(J);
q0 = [0.68438, -0.56827,-0.10002,-0.44574]';
w0 = [0;0;0];

wr = [1;0;0];

open("ex13slidingattitude.slx");
sim("ex13slidingattitude");
