function [syndrome] = detectH74(message)
    b0=mod(message(2)+message(3)+message(4),2);
    b1=mod(message(1)+message(2)+message(4),2);
    b2=mod(message(1)+message(3)+message(4),2);
    syndrome=[b0 b1 b2];
    syndrome=mod(message(5:end)+syndrome,2);
end

