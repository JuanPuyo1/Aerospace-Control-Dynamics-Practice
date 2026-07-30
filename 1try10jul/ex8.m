clear all
close all
clc

%%

x = [16.6,-95.58];
A = [6 1
    5*x(1)-1 7];

[eig,eigv] = eig(A);