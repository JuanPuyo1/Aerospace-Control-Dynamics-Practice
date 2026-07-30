clear all
close all
clc

%%

open("ex11impefk.slx");
out = sim("ex11impefk");

a = squeeze(out.simout.Data);

RMS = norm(a)/sqrt(length(a));