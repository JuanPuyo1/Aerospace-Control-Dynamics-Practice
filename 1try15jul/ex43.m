clear all
close all
clc

%%

global MU MUM
MU = 0.3986e6;
MUM = 4.90e3;


function xd=fr43b(t,x,rm)
global MU MUM
xd=zeros(6,1);
r3=norm(x(1:3))^3;

xd(1:3)=x(4:6);
xd(4:6)=-MU*x(1:3)/r3 - (MUM*(x(1:3)-rm)/norm(x(1:3)-rm)^3);
end

rm = [380499,80878,0]';
rp0 = [410000,60000,0]';
vp0 = [-0.7,0.2,0]';
x0 = [rp0;vp0];

[t,x] = ode45(@(t,x) fr43b(t,x,rm),[0,10*3600],x0);

p = norm(x(end,1:3)'-rm);