function [message] = receiverQPSK(s,t,Fs,F0)
    message=[];
    for i=1:length(s)/Fs
        t_aux=t((i-1)*Fs+1:i*Fs);
        simbol=s((i-1)*Fs+1:i*Fs);
        refCos=createCosRefQPSK(t_aux,F0,simbol);
        refSin=createSinRefQPSK(t_aux,F0,simbol);
        [~,EbC]=correlator(t_aux,refCos);
        [~,EbS]=correlator(t_aux,refSin);
        EbC=round(EbC,4);
        EbS=round(EbS,4);
        message= [message getBinSymb(EbC,EbS)];
    end
end

