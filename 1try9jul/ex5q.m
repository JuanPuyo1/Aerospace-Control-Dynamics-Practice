clear all
close all
clc

%%


function xd=kin_tb313(t,x)

% w=[0.2*sin(t);
%     0.5*sin(2*t);
%     0];

% w=[0.1621*sin(t);
%     -0.40329*sin(t);
%     -0.47023*sin(t)];

w=[-1.2332*sin(t); 
   -0.54608*sin(t);
    0.092223*sin(t)];

ph=x(1);
th=x(2);
ps=x(3);

B=1/sin(th)*[sin(ps) cos(ps) 0
             sin(th)*cos(ps) -sin(th)*sin(ps) 0
             -cos(th)*sin(ps) -cos(th)*cos(ps) sin(th)];
   
xd=B*w;

end

x0 = [1.7524, 2.8131, 2.1589];
[t,x] = ode45(@kin_tb313,[0,44],x0);