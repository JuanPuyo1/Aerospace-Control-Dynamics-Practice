clear all
close all
clc

%%

open("ex7impefk.slx");

out = sim("ex7impefk");

a = squeeze(out.simout.Data);

RMS = norm(a)/sqrt(length(a));