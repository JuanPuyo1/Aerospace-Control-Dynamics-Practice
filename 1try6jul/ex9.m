clear all
close all
clc

%%

x0 = [0.093073
    0.4898
    0.73997];

[t,x] = ode45(@kin_tb321,[0,20],x0);