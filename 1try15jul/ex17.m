clear all
close all
clc

%%

a = [0.3927,3.1416,1.5708];

ph=a(1);
th=a(2);
ps=a(3);

q1=[cos(ph/2);sin(ph/2);0;0];
q3=[cos(th/2);0;0;sin(th/2)];
q2=[cos(ps/2);0;sin(ps/2);0];

q = quatprod(q1,quatprod(q3,q2));
