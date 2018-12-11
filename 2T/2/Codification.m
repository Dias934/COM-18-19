function [s,t,messageStuffed] = Codification(A,Rb,L,Fs,message)
    Tb=1/Rb;
    messageStuffed=insertBitStuffing(message,L);
    t= 0: Tb/Fs :length(messageStuffed)*Tb;
    t(:,end) = [];
    s= zeros(1,length(t));
    for i=1:length(messageStuffed)
        s((i-1)*Fs+1:i*Fs)=generatePulse(A,messageStuffed(i),Fs);
    end
    figure;
    plot(t,s);
    xlim([0-Tb t(end)+Tb]);
    ylim([-1.1*A 1.1*A]);
end

