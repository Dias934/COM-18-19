clear all
clc
load('QPSKstr.mat');

Fs = 80000;
Rb = 1000;
F0 = 4*Rb;
Eb = 1;    
message=decodeQPSK(y,Rb,Fs,F0,Eb);
string=bin2char(message);
disp(string);