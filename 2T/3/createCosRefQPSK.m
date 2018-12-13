function ref = createCosRefQPSK(t,F0,s)
    aux=cos(2*pi*F0*t);
    ref=aux.*s;
end

