clear all
close all
clc

%%


open("ex23efkimp3.slx");
out = sim("ex23efkimp3");

a = squeeze(out.simout.Data);

RMS = norm(a)/sqrt(length(a));