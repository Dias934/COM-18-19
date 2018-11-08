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
function notes(Fi,dur,dir)

% Definir a frequencia de amostragem (em Hz).
Fs = 8000;

% O vetor com o numero total de pontos.
n = 1 : 1 : Fs*dur;
if dir>0
    for i=1 : 8    
        % Calcular a frequencia digital    
        W = 2*pi*(Fi/Fs);
        % Gerar a sinusoide com a frequencia digital
        Signal = cos( W * n );
        % Mensagem
        fprintf('(%d) - Sinusoide de frequencia %.2f Hz durante %.2f segundos \n', i, Fi, dur );
        % Reproduzir o sinal
        p=audioplayer( Signal, Fs );
        playblocking(p);
        % Actualizar a frequencia 
        Fi = Fi * power(2,1/12);    

    end
else
    for i=1 : 7
        Fi = Fi * power(2,1/12); 
    end
    for i=1 : 8    
        % Calcular a frequencia digital    
        W = 2*pi*(Fi/Fs);
        % Gerar a sinusoide com a frequencia digital
        Signal = cos( W * n );
        % Mensagem
        fprintf('(%d) - Sinusoide de frequencia %.2f Hz durante %.2f segundos \n', i, Fi, dur );
        % Reproduzir o sinal
        p=audioplayer( Signal, Fs );
        playblocking(p);
        % Actualizar a frequencia 
        Fi = Fi / power(2,1/12);    

    end
end

