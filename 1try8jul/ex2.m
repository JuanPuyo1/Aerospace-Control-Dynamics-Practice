clear all
close all
clc

%%

a= [1.5708,1.9635, 0.7854];

ph=a(1);
th=a(2);
ps=a(3);


q1=[cos(ph/2);sin(ph/2);0;0];
q2=[cos(th/2);0;sin(th/2);0];
q1ps=[cos(ps/2);sin(ps/2);0;0];


q = quatprod(q1,quatprod(q2,q1ps));