clear all
clc

code=[1 0 1 1 0 0 0 1];
Fs=8000;
Rb = 1000;  
F0 = 4*Rb;
A = 5;
[s,t]=emitterQPSK(code,A,Fs,F0,Rb);
figure;
plot(t,s);
received=receiverQPSK(s,t,Rb,Fs,F0,A);
aux=sprintf('%d',received);
fprintf('Message received:[%s]\n\n',aux);