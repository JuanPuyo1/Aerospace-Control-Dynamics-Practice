clear all
close all
clc

%%


F1 = [5.7; -3.65; -3.95];
rot = [0.99479; 1.1359; 2.4061];

T231 = rot_mat([2,3,1],rot);

F2 = T231*F1;


