clear all
close all
clc


%%

global MU MUm

MU = 0.3986e6;
MUm = 4.90e3;


function xd=fr3b2(t,x,rm)

global MU MUm
xd=zeros(6,1);
r3=norm(x(1:3))^3;

xd(1:3)=x(4:6);
xd(4:6)=-MU*x(1:3)/r3 -(MUm*(x(1:3)-rm)/norm(x(1:3)-rm)^3);

end


rm = [380499,80878,0]';

r0 = [410000,60000,0];
v0 = [-0.7,0.2,0];

x0 = [r0, v0]';

[t,x] = ode45(@(t,x) fr3b2(t,x,rm),[0,10*3600],x0);


p = norm(x(end,1:3)'-rm);
