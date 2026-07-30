clear all
close all
clc

%%

a = [3.1416, 1.5708, 2.3562];

ph=a(1);
th=a(2);
ps=a(3);


q3=[cos(ph/2);0;0;sin(ph/2)];
q1=[cos(th/2);sin(th/2);0;0];
q2=[cos(ps/2);0;sin(ps/2);0];

q = quatprod(q3,quatprod(q1,q2));

