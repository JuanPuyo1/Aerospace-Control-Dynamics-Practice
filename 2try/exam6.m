clear all
close all
clc

%%

function xd = myfunc(t,x)

xd = [0;0];

xd(1,:) = 3*x(1)-x(2);
xd(2,:) = -4*x(1)^2 - x(2) + 5;

end


[t,x] = ode45(@myfunc,[0,500],[0.1;0.1]);

figure
grid on

plot(x(:,1),x(:,2))
