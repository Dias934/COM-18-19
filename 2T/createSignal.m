function signal = createSignal(a,Fs,t)
    signal=zeros(1,length(t));
    signal=a*cos(2*pi*Fs*t);
end

