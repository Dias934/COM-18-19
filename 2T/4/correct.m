function [received] = correct(message, error)
    message=mod(message+error,2);
    received=message(1:4);
end

