function ref = createSinRefQPSK(t,F0,s)
    aux=sin(2*pi*F0*t);
    ref=aux.*s;
end

