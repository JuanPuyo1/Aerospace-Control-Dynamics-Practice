clear all
close all
clc
%%


open("ex7impefk2.slx");

out = sim("ex7impefk2");

a = squeeze(out.simout.Data);

RMS = norm(a)/sqrt(length(a));