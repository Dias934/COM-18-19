clc 
clear all

message=[1 0 0 1];
codeH74=coderH74(message)
codeH84=coderH84(message)
codeH74(1)=0;
[received,syndrome]=decoderH74(codeH74,0)
[received,syndrome]=decoderH74(codeH74,1)
codeH84(1)=0;
[received,syndrome]=decoderH84(codeH84,0)
[received,syndrome]=decoderH84(codeH84,1)