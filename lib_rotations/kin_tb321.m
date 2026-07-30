function xd=kin_tb321(t,x)

% w=[0.2*sin(t);
%     0.5*sin(2*t);
%     0];
% 
% w=[0.1621*sin(t);
%     -0.40329*sin(t);
%     -0.47023*sin(t)];

w=[0.28754;
   1.2651;
   -0.27511]*sin(t);

%w = [0.1621*sin(t);-0.40329*sin(t);-0.47023*sin(t)];

ph=x(1);
th=x(2);
ps=x(3);

B=[ cos(th), sin(ph)*sin(th),  cos(ph)*sin(th)
       0, cos(ph)*cos(th), -cos(th)*sin(ph)
       0,         sin(ph),          cos(ph)]/cos(th);
   
xd=B*w;