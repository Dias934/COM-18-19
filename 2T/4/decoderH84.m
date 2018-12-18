function [decoded,syndrome] = decoderH84(message,type)
    syndrome=detectH84(message);
    if(type==0)    
        decoded=message(1:4);
    else
        decoded=correct(message,syndromeTableH84(syndrome));
    end
end

