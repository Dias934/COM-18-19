function bin = getBinSymb(c,s)
    bin=zeros(1,2);
    if(c>=0)
        if(s>=0)
            bin=[1 1];
        else
            bin=[1 0];
        end
    else
        if(s>=0)
            bin=[0 1];
        else
            bin=[0 0];
        end
    end
end

