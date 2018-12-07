clc
clear all

A=5;
Rb=1000; %bits por segundo 0.001
L=3;
Fs=8000;
send=[1 0 0 1 1 1 0 0 0 1 0];

[s,t]=Codification(A,Rb,L,Fs,send);
received=Descodification(s,t,A,Rb,L,Fs);