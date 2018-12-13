function [s1] = bin2char(s)
    s1=[];
    if(~isempty(s))
        for  i=1:8:length(s)
            if i+7>length(s)
                break;
            end
            aux=s(i:i+7);
            aux1=num2str(aux);
            aux2= bin2dec(aux1);
            s1=[s1,char(aux2)];
        end
    end
end

