clc
clear all
%message=[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1];
%G=[1 0 1 1];
%q=3;
message=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
G=[1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1];
q=4;
transmition=crc16Codification(message,G,q);
[received, syndrome]=crc16Descodification(transmition,G,q);
disp(received);
disp(syndrome);
