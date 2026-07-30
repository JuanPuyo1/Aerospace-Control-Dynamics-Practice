clear all
close all
clc

%%

function xd = myode(t,x)
xd = [3*x(1)-x(2);
    -4*x(1)^2-x(2)+5];
end

for i=1:20
    x0 = [randi([-i,1]),randi([0,i])];
    [t,x] = ode45(@myode,[0,0.3],x0);
    plot(x(:,1),x(:,2));
end