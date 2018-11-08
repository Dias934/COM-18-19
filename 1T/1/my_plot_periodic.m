%
% ISEL - Instituto Superior de Engenharia de Lisboa.
%
% LEIC - Licenciatura em Engenharia Informatica e de Computadores.
%
% Com  - Comunica��es. 
%
% 
%
% plot_periodic.m
% Script para executar o desenho de sinais peri�dicos.
%

% Remover todas as vari�veis de mem�ria.
clear all

% Fechar todas as janelas de gr�ficos.
close all

%definir frequencia
f=2;

% Criar o vector de pontos, tendo em atencao a frequencia do sinal 
% que se pretende representar (Teo Nyquist)
t = -2 : 0.01 : 2;		
t= t(1:length(t)/2);
t3=-2: 0.01 :2*4-2; %-2 porque a matriz come�a em -2

% Definir a amplitude
A = 3;

% Definir o offset.
B = 2;

% Aplicar a express�o do sinal.
x = B + A * cos( 2*pi*f*t );
% x = B + A * cos( 2*pi*f*t ) + 2 * A * cos( 2*pi*2*f*t );
% x = B + A * cos( 2*pi*f*t ) + 2 * A * cos( 2*pi*2*f*t ) + (A) * cos( 2*pi*5*f*t );
y = 2*x + 5;
w=3*y-2;
z= B + A * cos( 2*pi*f*t3/4);
% Desenhar o sinal x.
plot( t, x );

% Colocar uma grelha sobre o desenho.
grid on; 

% Labels e t�tulos.
xlabel(' Tempo ');
ylabel(' Amplitude ');
title(   [' Sinus�ide com offset  x(t)=2 + 3cos( 2\pi' num2str(f)  't  ) ']  );

% Desenhar dois gr�ficos na mesma figura.
% Sinal original e transformado. 
figure;
subplot(2,1,1); plot( t, x ); xlabel(' Tempo '); ylabel(' Amplitude ');
grid on;      title(   [' x(t)=2 + 3cos( 2\pi' num2str(f)  't  ) ']  );
subplot(2,1,2); plot( t, y ); xlabel(' Tempo '); ylabel(' Amplitude ');
grid on;      title(' Sinal y(t)=2x(t)+5');

figure;
plot(t, w);
figure;
plot(t3,z);
