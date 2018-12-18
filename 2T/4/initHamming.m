function [code] = initHamming(message, check)
    code=zeros(1,length(message)+check);
    code(1:length(message))=message;
end

