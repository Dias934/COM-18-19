function [decoded,syndrome] = decoderH74(message,type)
    syndrome=detectH74(message);
    if(type==0)    
        decoded=message(1:4);
    else
        decoded=correct(message,syndromeTableH74(syndrome));
    end
end

