clear all
close all
clc
%%

x0 = [0;0;0];
Tfin = 100;
open("ex8imp.slx");
out = sim("ex8imp");
%x = out.x.Data;
%plot3(x(1,:),x(2,:),x(3,:));