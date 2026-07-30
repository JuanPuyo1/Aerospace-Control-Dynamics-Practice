clear all
close all
clc

%%

a = [0.3927, 2.3562, 1.5708];

ph = a(1);
th = a(2);
ps = a(3);

q2=[cos(ph/2);0;sin(ph/2);0];
q1=[cos(th/2);sin(th/2); 0; 0];
q3=[cos(ps/2);0;0;sin(ps/2)];

q = quatprod(q2,quatprod(q1,q3));
