clear all
close all
clc


%%

syms x1 x2
eq1= -3*x1-x2 == 0;
eq2 = 4*x1^2-x2-5==0;
sol = solve([eq1,eq2],[x1,x2]);
x1s = double(sol.x1);
x2s = double(sol.x2);
%%
function xd = myode15(t,x)

xd = [-3*x(1)-x(2);
    4*x(1)^2-x(2)-5];
end

figure
hold on
plot([0.8042;-1.5542],[-2.4127;4.6627])
for i=1:20
    x0 = [randi([-2,2]),randi([-4,4])];
    [t,x] = ode45(@myode15,[0,0.6],x0);
    plot(x(:,1),x(:,2));
end