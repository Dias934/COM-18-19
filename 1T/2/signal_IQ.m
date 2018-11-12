function [s,oddA,oddB,oddS,evenA,evenB,evenS,t,f] = signal_IQ(m1,m2,A,B)
    f=200;
    t=0:1/f:3;
    a=m1*createSignal(0,f,t);
    a1=m1*createSignal(0,f,-t);
    evenA=(a+a1)/2;
    oddA=(a-a1)/2;
    b=m2*createSignal(1,f,t);
    b1=m2*createSignal(1,f,-t);
    evenB=(b+b1)/2;
    oddB=(b-b1)/2;
    auxA=A*a;
    auxB=B*b;
    s=auxA+auxB;
    s1=A*a1+B*b1;
    evenS=(s+s1)/2;
    oddS=(s-s1)/2;
end

