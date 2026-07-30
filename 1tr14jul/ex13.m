clear all
close all
clc

%%

global MU
MU = 0.3986e15;
rp = [6380637, 0, 0]';
vp = [0, 9460.9755, 0]';
x0 = [rp;vp];

[t,x] = ode45(@(t,x) fr2b(t,x,MU),[0,1.2*3600],x0);

[~,~,th] = rv2oe(x');

thg = rad2deg(th(end));