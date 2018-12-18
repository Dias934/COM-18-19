function code = coderH74(message)
    code=initHamming(message,3);
    m0=mod(message(2)+message(3)+message(4),2);
    m1=mod(message(1)+message(2)+message(4),2);
    m2=mod(message(1)+message(3)+message(4),2);
    code(5:end)=[m0 m1 m2];
end

