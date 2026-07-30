clear all
close all
clc

%%

ph= 2.1984;
th =   -0.67862;
ps =   -0.031472; 
phd = -1.1502;
thd = 0.6096;
psd =  0.94636;


w = [cos(th)*cos(ps) sin(ps) 0
     -cos(th)*sin(ps) cos(ps) 0
     sin(th) 0 1]*[phd;thd;psd];
