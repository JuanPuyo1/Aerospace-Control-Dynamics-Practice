
clear all
close all
clc

%%


function xd = mycr(t,x)

xd = zeros(2,1);
xd(1,:) = x(2)-7*x(1);
xd(2,:) = x(2)-20*x(1)^2;

end

figure
hold on
for i=1:20
    x0 = [randi([-5,5]),randi([-5,5])];
    [t,x] = ode45(@mycr,[0,0.3],x0);
    plot(x(:,1),x(:,2));
end