function [matrix] = generateRandomBinMatrix(size)
    matrix=mod(randi(2,1,size),2);
end

