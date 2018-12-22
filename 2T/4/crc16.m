function [ret,Synd] = crc16(message,G,q,operation)
    Synd=[];
    if operation>0
        ret=crc16Codification(message,G,q);
    else
        [ret,Synd]=crc16Descodification(message,G,q);
    end
end

