clear all
close all
clc

%%

a = [2.1553, 2.3531, 3.0489];
T221 = rot_mat([2,2,1],a);
F1 = [-0.6, -2, -5.3]';

F2 = T221*F1;