clear all
close all
clc

%%
a = [0.99479,1.1359,2.4061]; 
F1 = [5.7
     -3.65
     -3.95];

T231 = rot_mat([2,3,1],a);
F2 = T231*F1;
