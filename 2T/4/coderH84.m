function code = coderH84(message)
    code= initHamming(message,4);
    m0=mod(message(1)+message(2)+message(3),2);
    m1=mod(message(1)+message(2)+message(4),2);
    m2=mod(message(1)+message(3)+message(4),2);
    m3=mod(message(2)+message(3)+message(4),2);
    code(5:end)=[m0 m1 m2 m3];
end

