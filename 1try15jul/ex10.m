clear all
close all
clc

%%

a = [2.1984, -0.67862, -0.031472];
b = [-1.1502, 0.6096, 0.94636];

ph=a(1);
th=a(2);
ps=a(3);

phd=b(1);
thd=b(2);
psd=b(3);

w = [cos(th)*cos(ps) sin(ps) 0;
    -cos(th)*sin(ps) cos(ps) 0;
    sin(th) 0 1]*[phd;thd;psd];