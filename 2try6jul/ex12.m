clear all
close all
clc

%%

w = [1.5,-0.3,2.1];

Q = [0 -w(1) -w(2) -w(3)
    w(1) 0 w(3) -w(2)
    w(2) -w(3) 0 w(1)
    w(3) w(2) -w(1) 0];

[eig,eigv] = eig(Q);