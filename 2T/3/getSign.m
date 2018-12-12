function [A,B] = getSign(bits)
    if bits(1)==1
        A=1;
    else
        A=-1;
    end
    if bits(2)==1
        B=1;
    else
        B=-1;
    end
end

