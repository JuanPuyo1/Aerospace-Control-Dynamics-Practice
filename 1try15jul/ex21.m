clear all
close all
clc

%%
x0 = [0.31156,0.23895,0.2768];
[t,x] = ode45(@kin_tb321,[0,24.8],x0);