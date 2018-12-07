function ret = insertBitStuffing(message,L)
    ret=0;
    size=0;
    value=-1;
    count=0;
    for i=1 : length(message)
        size=size+1;
        if(value== message(i))
            count=count+1;
            if(count==L)
                size=size+1;
                count=0;
            end
        else
            value=message(i);
            count=1;
        end
    end
    ret=zeros(1,size);
    value=-1;
    count=0;
    idx=1;
    for i=1 : length(message)
        ret(idx)=message(i);
        idx=idx+1;
        if(value==message(i))
            count=count+1;
            if(count==L)
                if(message(i)==0)
                    ret(idx)=1;
                else
                    ret(idx)=0;
                end
                idx=idx+1;
                count=0;
            end
        else
            count=1;
            value=message(i);
        end
    end
end

