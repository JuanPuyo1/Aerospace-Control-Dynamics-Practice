clear all
close all
clc

%%

F2 = [3;1;2];
angles = [0.3*pi;-0.4*pi;1.5*pi];

T212 = rot_mat([2,1,2],angles);

F1 = T212'*F2;
