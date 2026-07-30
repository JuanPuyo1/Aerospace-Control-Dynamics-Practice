clear all
close all
clc

%%

a = [2.0776,  2.1  ,0.38121];

T231 = rot_mat([2,3,1],a);

F1 = [1.85;1.05;-3.8];

F2 = T231*F1;