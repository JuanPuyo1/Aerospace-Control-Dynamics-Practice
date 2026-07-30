clear all
close all
clc

%%

global MU
MU = 0.3985e15;

rp = [6380411; 0; 0];
vp = [0; 9706.7889; 0];

x0 = [rp;vp];
[t,x] = ode45(@(t,x) fr2b(t,x,MU),[0,1.4*3600],x0);

[~,~,th] = rv2oe(x',MU);

thg = rad2deg(th(end));