clc 
clear all

message=[0 0 0 0];
codeH74=coderH74(message);
codeH84=coderH84(message);
codeH74(4)=1; %inserção de 1 erro
%[received,syndrome]=decoderH74(codeH74,0)
[received,syndrome]=decoderH74(codeH74,1)
codeH84(4)=1;
%[received,syndrome]=decoderH84(codeH84,0)
[received,syndrome]=decoderH84(codeH84,1)