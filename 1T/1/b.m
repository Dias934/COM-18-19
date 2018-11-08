clc
clear

% 3
x=[0,1,4,5,9];
inc=2;
y=[1: inc : 20];
t=0:0.01:0.1;

%4
%x(0) %Array indices must be positive integers or logical values.
x(1) % =0
x(5) % =9
y(2:3) %= [3 5]
%y(x) %Array indices must be positive integers or logical values.
y(x(2:3)) %=[1 7]
y(2:end) %= [3 5 7 9 11 13 15 17 19]

%5
w=[0:0.01:0.05 0.06:0.02:0.14]
g=w+t
g(7:end)=t(1:5)
%h=w(1:5)+g
h=w(1:5) + g(2:2:10)

%6
z=t.^2 % eleva ao quadrado cada elemento da matriz
h=w(1:5) .*g(2:2:10) %multiplica cada elemento da matriz w(1:5) com a matriz g(2:2:10)

%7
E1=sum(h.*h)
E2=h*h'
E3=0;
for i=1:length(h)
    E3=E3+h(i)*h(i);
    i=i+1;
end
disp(E3); %5.8900e-06

%12
A=[1 2 3; 0 1 2; -3 0 -5];
v=[1 2 3];

%13
y=[-4 0 -1];
B=[A;y];
B(1,:) %ans= [1 2 3] ; buscar todos os valores da linha 1
B(:,2) %ans= [2;1;0;0]; buscar todos os valores da coluna 2
B(2,3) %ans= 2; buscar o valor da linha 2 coluna 3
sum(B) %ans= [-6 3 -1]; somar todos valores de cada coluna
sum(sum(B)) %ans= -4; somar todos os valores da matriz
[NR, NC]=size(B) %NR=4 NC=3; devolve o número de linhas e o número de colunas da matriz
length(B) %ans=4 ; devolve o número de colunas da matriz
M=A %M=[1 2 3;0 1 2;-3 0 -5]; copia os valores da matriz A para uma nova matriz M
M(4,:)=y %M=[1 2 3;0 1 2;-3 0 -5; -4 0 -1]; adiciona uma quarta linha à matriz M e copia os valores de y para essa linha
M(:,3)=[] %M=[1 2;0 1;-3 0;-4 0]; elimina a coluna 3 da matriz M

