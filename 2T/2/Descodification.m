function received = Descodification(s,t,A,Rb,L,Fs)
    received=[];
    Tb=1/Rb;
    count=0;
    value=-1;
    for i=1 : length(s)/Fs;
        if count== L
            count=0;
        else
            pulse=s((i-1)*Fs+1:i*Fs);
            En=pulse*Tb;
            if En>0
                if value==1
                    count=count+1;
                    received=[received 1];
                else
                    count=1;
                    value=1;
                    received=[received 1];
                end
            else
                if value==0
                    count=count+1;
                    received=[received 0];
                else
                    count=1;
                    value=0;
                    received=[received 0];
                end
        end
    end
end

