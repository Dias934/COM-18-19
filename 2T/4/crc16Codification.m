function T = crc16Codification(message,G,q)
    M=[message zeros(1,q)];
    [~,r]=deconv(M,G);
    T=M+mod(r,2);
end

