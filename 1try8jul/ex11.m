clear all
close all
clc

%%

open("ex11efkimp.slx");

out = sim("ex11efkimp");

a = squeeze(out.err.Data);

RMS = norm(a)/sqrt(length(a));