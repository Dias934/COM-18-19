clc
clear all

A=5;
Rb=1000; %bits por segundo 0.001
L=3;
Fs=8000;
send=[1 0 0 1 1 1 1 0 0 0 1 0];
alfa=1;

[s,t,coded]=Codification(A,Rb,L,Fs,send);
s=s*alfa;
noise=wgn(1,length(s),-4);
s=s+noise;
received=Descodification(s,t,A,Rb,L,Fs);
aux=sprintf("%d",send);
fprintf("First Message \n");
fprintf("Message:[%s]\n",aux);
aux=sprintf("%d",coded);
fprintf("Message sent:[%s]\n",aux);
aux=sprintf("%d",received);
fprintf("Message received:[%s]\n",aux);

%Tb=1/Rb;
%figure;
%plot(t,s);
%xlim([0-Tb t(end)+Tb]);
%ylim([-1.1*A 1.1*A]);