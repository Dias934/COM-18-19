function [s,oddA,oddB,oddS,evenA,evenB,evenS] = signal_IQ(m1,m2,A,B,F0,t)
    a=m1*createSignal(0,F0,t);
    a1=m1*createSignal(0,F0,-t);
    evenA=(a+a1)/2;
    oddA=(a-a1)/2;
    b=m2*createSignal(1,F0,t);
    b1=m2*createSignal(1,F0,-t);
    evenB=(b+b1)/2;
    oddB=(b-b1)/2;
    auxA=A*a;
    auxB=B*b;
    s=auxA+auxB;
    s1=A*a1+B*b1;
    evenS=(s+s1)/2;
    oddS=(s-s1)/2;
end

