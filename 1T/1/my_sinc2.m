%
% ISEL - Instituto Superior de Engenharia de Lisboa.
%
% LEIC - Licenciatura em Engenharia Informatica e de Computadores.
%
% Com  - Comunicações. 
% 
%  
% my_sinc.m
% Função para desenho de sinc(t) e sinc(at) no mesmo gráfico.
% Recebe:
%       a, parâmetro de escalamento da sinc(at).
% Retorna:
%       t, eixo dos tempos sobre o qual as sincs foram definidas.
%       x, amostras de sinc(t).
%       y, amostras de sinc(at).
function [t, x, y] = my_sinc(a,b)

% Verificar o número de parâmetros de entrada.
fprintf(' Função chamada com %d parâmetros de entrada\n', nargin );
if 0==nargin
    % Sem parâmetros de entrada.
    % Atribuir o valor de 'a' por omissão.
    a = 2;
    b = 2;
end

% Verificar o número de parâmetros de saída.
fprintf(' Função chamada com %d parâmetros de saída\n', nargout );


% Criar o vetor de pontos - grelha de tempo.
t = -3 : 0.01 : 3;			

% Definir as sincs.
x = sinc(t);
y = sinc(a*t);
z= 4*x.^2;
w= a*(sinc(t-b));
% Desenhar os sinais x e y.
plot( t, z, t, w ); 

% Colocar legendas.
legend (' z(t)=4x^2(t)', sprintf('y(t)=%.1fsinc(t-%.1f)',a,b ));

% Colocar uma grelha sobre o desenho.
grid on;

% Labels e títulos.
xlabel(' Tempo ');
ylabel(' Amplitude ');
title( sprintf(' 4*(sinc(t))^2 e %.1fsinc(t-%.1f)',a,b ) );



