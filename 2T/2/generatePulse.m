function pulse = generatePulse(A,bit,Fs)
    pulse=zeros(1,Fs);
    if bit>0
        pulse(1,:)=A;
    else
        pulse(1,:)=-1*A;
    end
end

