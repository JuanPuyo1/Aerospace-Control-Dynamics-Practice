clc;clear;close all;

MU = 0.3986e15;

m = 14164; % Inutile
x0 = [6380434 0 0 0 9692.8824 0]';

tsim = 60*60*0.7;

[t,x] = ode45(@(t,x)fr2b(t,x,MU),[0 tsim],x0);

[~,~,th] = rv2oe(x(end,:)',MU);

rad2deg(th)