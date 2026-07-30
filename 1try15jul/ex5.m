clear all
close all
clc

%%


function xd=kin3134(t,x)

w=[-1.2332*sin(t), -0.54608*sin(t), 0.092223*sin(t)]';

ph=x(1);
th=x(2);
ps=x(3);

B=[sin(ps) cos(ps) 0
    sin(th)*cos(ps) -sin(th)*sin(ps) 0
    -cos(th)*sin(ps) -cos(th)*cos(ps) sin(th)]/sin(th);
   
xd=B*w;

end

x0 = [1.7524, 2.8131, 2.1589];
[t,x] = ode45(@kin3134,[0,44],x0);