function [received,syndrome] = crc16Descodification(transmited,G,q)
    M=transmited;
    [~,r]=deconv(M,G);
    M(end-q+1:end)=zeros(1,q);
    received=M(1:end-q);
    syndrome=mod(abs(r),2);
end

