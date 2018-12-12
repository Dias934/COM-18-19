function [s,t] = emitter(code,A,Fs,F0,Rb)
    Tb=1/Rb;
    pulses=2;
    Ts=pulses*Tb;
    t=0 : Ts/Fs :(length(code)/pulses)*Ts;
    t(:,end) = [];
    s=zeros(1,length(t));
    amp=A /sqrt(2);
    idx=1;
    for i=1:pulses:length(code)
        [m1, m2]=getSign(code(i:i+1));
        s((idx-1)*Fs+1:idx*Fs)=signal_IQ(m1,m2,amp,amp,F0,t((idx-1)*Fs+1:idx*Fs));
        idx=idx+1;
    end
end

