clc
clear all

message=[1 0 0 1];
G=[1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1];
degree=16;
%transmition=crc16Codification(message,G,degree);
%[received, syndrome]=crc16Descodification(transmition,G,degree);
transmition=crc16(message,G,degree,1);
transmition(1)=0; %inserção de erro
[received, syndrome]=crc16(transmition,G,degree,0);
aux=sprintf('%d',message);
fprintf('Original Message:[%s]\n',aux);
aux=sprintf('%d',transmition);
fprintf('Transmited Message:[%s]\n',aux);
aux=sprintf('%d',received);
fprintf('Received Message:[%s]\n',aux);
aux=sprintf('%d',syndrome);
fprintf('syndrome:[%s]\n',aux);