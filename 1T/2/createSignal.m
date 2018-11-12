function signal = createSignal(type,f,t)
    signal=zeros(1,length(t));
    if type==0
        signal=cos(2*pi*f*t);
    else
        signal=sin(2*pi*f*t);
    end
end

