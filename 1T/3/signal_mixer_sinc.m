function vec = signal_mixer_sinc(A0,N,d,fo)
    interval=[-5 5];
    t=interval(1):1/(fo+1):interval(2);
    sig=zeros(N,length(t));
    a=ones(N,1);
    for k=1:N
        sig(k,:)=d*sinc(k*d)*cos(2*pi*k*fo*t);
    end
    vec=A0+signal_mixer(a,sig,N,t);
end

