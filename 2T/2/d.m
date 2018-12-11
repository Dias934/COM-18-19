clc
clear all

A=5;
Rb=1000; %bits por segundo 0.001
L=3;
Fs=8000;
send=[1 0 0 1 1 1 1 0 0 0 1 0];

%[s,t,coded]=Codification(A,Rb,L,Fs,send);
%aux=sprintf("%d",send);
%fprintf("First Message \n");
%fprintf("Message:[%s]\n",aux);
%aux=sprintf("%d",coded);
%fprintf("Message sent:[%s]\n\n",aux);
alfa=rcosdesign(0,10,40)
figure;
plot(alfa);