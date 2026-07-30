clear all
close all
clc

%%

function xd = myode(t,x)

xd = [5*sin(6*t)-x(1);
    3*x(1)*x(2)-2*x(2)+1];
end
x0 = [2;1.5];
[t,x] = ode45(@myode,[0,24],x0);