clc
clear all

A=5;
Rb=1000; %bits por segundo 0.001
L=3;
Fs=8000;
send=generateRandomBinMatrix(500);
[s,t,coded]=Codification(A,Rb,L,Fs,send);
alfa=1;
noise=wgn(1,length(s),2);
aux=s*alfa;
aux=aux+noise;
received=Descodification(aux,t,A,Rb,L,Fs);


aux=sprintf("%d",send);
fprintf("First Message \n");
fprintf("Message:[%s]\n",aux);
aux=sprintf("%d",coded);
fprintf("Message sent:[%s]\n",aux);
aux=sprintf("%d",received);
fprintf("Message received:[%s]\n",aux);
 
figure;
plot(t,s);