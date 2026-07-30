clear all
close all
clc

%%

Angles = [2.0776,  2.1  ,0.38121];
F1 = [1.85
    1.05
    -3.8];

T231 = rot_mat([2,3,1],Angles);

F2 = T231*F1;