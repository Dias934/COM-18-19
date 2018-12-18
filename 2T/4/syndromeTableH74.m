function [error] = syndromeTableH74(syndrome)
    syndIDX=[0 0 0;0 1 1;1 1 0;1 0 1;1 1 1;1 0 0;0 1 0;0 0 1];
    idx=0;
    for i=1:length(syndIDX)
        if(syndIDX(i,:)==syndrome)
            idx=i;
        end
    end
    err=[0 0 0 0 0 0 0; 1 0 0 0 0 0 0; 0 1 0 0 0 0 0; 0 0 1 0 0 0 0; 
           0 0 0 1 0 0 0; 0 0 0 0 1 0 0; 0 0 0 0 0 1 0; 0 0 0 0 0 0 1];
    error=err(idx,:);
end

