clear all
close all
clc

%%

a = [0.098035,2.1625,-0.47316];
b = [0.22572,-0.11642,-1.6701];

ph=a(1);
th=a(2);
ps=a(3);

phd=b(1);
thd=b(2);
psd=b(3);

w = [cos(th)*cos(ps) sin(ps) 0
    -cos(th)*sin(ps) cos(ps) 0
    sin(th) 0 1]*[phd;thd;psd];
