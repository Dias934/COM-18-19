function vec = signal_mixer(a,s,N,t)
    vec=zeros(1,length(s));
    for i=1:1:N
        vec=vec+a(i)*s(i,:);
    end
    figure;
    plot(t,vec);
end

