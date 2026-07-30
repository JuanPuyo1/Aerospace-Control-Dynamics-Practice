clear all
close all
clc

%%

global MU
MU = .3986e15;

rp=[6380411; 0; 0];
vp=[0; 9706.7889; 0];

x0 = [rp;vp];

[t,x] = ode45(@(t,x) fr2b(t,x,MU),[0,1.4*3600],x0);

p = x(:,1:3);
v = x(:,4:6);

rfinal = p(end,:);
vfinal = v(end,:);

h = cross(rfinal,vfinal);

e = 1/MU*(cross(vfinal,h))-(rfinal/norm(rfinal));

th = acos(dot(rfinal/norm(rfinal),(e/norm(e))));

thg = rad2deg(th);