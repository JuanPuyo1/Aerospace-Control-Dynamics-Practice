clear all
close all
clc

%%

syms ph th ps


T2 = [cos(ph) 0 sin(ph)
      0 1 0
      -sin(ph) 0 cos(ph)];

T1 = [1 0 0
      0 cos(th) -sin(th)
      0 sin(th) cos(th)
      ];

T2s = [cos(ps) 0 sin(ps)
      0 1 0
      -sin(ps) 0 cos(ps)];

T212 = T2*T1*T2s;


t212 = rot_mat([2,1,2],[ph,th,ps]);