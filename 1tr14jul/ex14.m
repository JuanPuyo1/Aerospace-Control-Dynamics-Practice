clear all
close all
clc

%%

global MU MUM
MU = 0.3986e6;
MUM = 4.90e3;


function xd=fr3b5(t,x,MU,MUM,rm)

xd=zeros(6,1);
r3=norm(x(1:3))^3;

xd(1:3)=x(4:6);
xd(4:6)=-MU*x(1:3)/r3 - (MUM*(x(1:3)-rm)/norm(x(1:3)-rm)^3);
end

rm = [380499, 80878, 0]';

r0 = [41e4;6e4;0];
v0 = [-.7;0.2;0];
x0 = [r0;v0];

[t,x] = ode45(@(t,x) fr3b5(t,x,MU,MUM,rm),[0,10*3600],x0);

p = norm(x(end,1:3)'-rm);