function [c,C] = correlator(x, ref)
    c = x .* ref;
    C = sum(c);
end

