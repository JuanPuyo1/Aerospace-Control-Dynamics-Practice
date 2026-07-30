clear all
close all
clc

%%


open("ex3impefk.slx");
out = sim("ex3impefk");

a = squeeze(out.simout.Data);

RMS = norm(a)/sqrt(length(a));