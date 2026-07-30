clear all
close all
clc

%%


a = [0.3*pi;-0.4*pi;1.5*pi];
ph=a(1);
th=a(2);
ps=a(3);

r = [0;3;1;2];


q2=[cos(ph/2);0;sin(ph/2);0];
q1=[cos(th/2);sin(th/2);0;0];
q2s=[cos(ps/2);0;sin(ps/2);0];

q = quatprod(q2,quatprod(q1,q2s));

qs = [q(1);-q(2:4)];

qf = quatprod(q,quatprod(r,qs));
