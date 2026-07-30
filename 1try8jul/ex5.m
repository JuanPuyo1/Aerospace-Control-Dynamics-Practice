clear all
close all
clc

%%

function xd = myode(t,x)

    xd = [x(1)*x(2) - 3*sin(3/5*t) 
         -x(1)^2]; 
end

x0=[-1;-1];

[t,x] = ode45(@myode,[0,25],x0);