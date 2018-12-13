function [code] = decodeQPSK(s,Rb,Fs,F0,Eb)
    Ts=1/Rb;
    T_periodo=1/Fs;
    n_amostras=Ts/T_periodo;
    code=[];
    for i=n_amostras:n_amostras:length(s)
        t=Ts/n_amostras:Ts/n_amostras:Ts;
        simbol=s((i-(n_amostras-1)):i);
        refCos=createCosRefQPSK(t,F0,simbol);
        refSin=createSinRefQPSK(t,F0,simbol);
        [~,EbC]=correlator(t,refCos);
        [~,EbS]=correlator(t,refSin);
        EbC=round(EbC,3);
        EbS=round(EbS,3);
        code=[code getBinSymb(EbC,EbS)];
    end
end

