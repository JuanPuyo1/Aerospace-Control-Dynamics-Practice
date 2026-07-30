clear all
close all
clc

%%

x0 = [0.25;0;0.63];

[t,x] = ode45(@euler_eq,[0,0.9],x0);

figure
hold on
quiver3(x0(1,:),x0(2,:),x0(3,:));
quiver3(x(end,1),x(end,2),x(end,3));
