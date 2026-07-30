clear all
close all
clc

%%

a = [2.2449,0.52995,1.8022];
T221 = rot_mat([2,2,1],a);
F1 = [0.5;-8.15;-0.9];

F2 = T221*F1;