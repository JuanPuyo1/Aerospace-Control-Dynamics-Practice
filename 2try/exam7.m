clear all
close all
clc

%%

rot = [0.3927
    2.3562
    1.5708];
A = zeros(3);
q = vec2qua(rot, A);