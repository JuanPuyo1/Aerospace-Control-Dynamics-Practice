clear all
close all
clc

%%

global MU
MU = 0.3986e15;

r0 = [6380637;0;0];
v0 = [0;9460.9755;0];

x0 = [r0;v0];


[t,x] = ode45(@(t,x) fr2b(t,x,MU),[0,1.2*3600],x0);

position = x(:,1:3);
velocity = x(:,4:6);

rfinal = position(end,:);
vfinal = velocity(end,:);

h = cross(rfinal,vfinal);

e = 1/MU * (cross(vfinal,h)) - (rfinal/norm(rfinal));

th = acos(dot((rfinal/norm(rfinal)),(e/norm(e))));

thd = rad2deg(th);