%
% ISEL - Instituto Superior de Engenharia de Lisboa.
%
% LEIC - Licenciatura em Engenharia Informatica e de Computadores.
%
% Com  - Comunicações. 
% 
%
% notes.m
% Função de teste. Geração das notas musicais.
%
function [p,s1,s2,t]=notes(Fi,dur,dir,init_F,end_F,Fs)

p=audioplayer.empty(8,0);
% O vetor com o numero total de pontos.
n = 1 : 1 : Fs*dur;
t = 0 : 1/Fs : dur*8;
s1 = zeros(1,length(t));
s2 = zeros(1,length(t));
Signal=zeros(1,length(n));
if dir>0
    for i=1 : 8
        W = 2*pi*(Fi/Fs);
        Signal = cos( W * n );
        s1((i-1)*Fs*dur+1:i*Fs*dur)=Signal;
        if(Fi<init_F || Fi>end_F)
            Signal=zeros(1,length(n));
        end
        s2((i-1)*Fs*dur+1:i*Fs*dur)=Signal;
        p(i)=audioplayer( Signal, Fs );
        Fi = Fi * power(2,1/12);    
    end
else
    for i=1 : 7
        Fi = Fi * power(2,1/12); 
    end
    for i=1 : 8       
        W = 2*pi*(Fi/Fs);
        Signal = cos( W * n );
        s1((i-1)*Fs*dur+1:i*Fs*dur)=Signal;
        if(Fi<init_F || Fi>end_F)
            Signal=zeros(1,length(n));
        end
        s2((i-1)*Fs*dur+1:i*Fs*dur)=Signal;
        p(i)=audioplayer( Signal, Fs );
        Fi = Fi / power(2,1/12);    

    end
end

