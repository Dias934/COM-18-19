%
% ISEL - Instituto Superior de Engenharia de Lisboa.
%
% LEIC - Licenciatura em Engenharia Informatica e de Computadores.
%
% Com  - Comunicações.  
%
% file2bit.m
%
% Recebe:   filename, nome do ficheiro.
% Retorna:  b, vetor com os bits que compoem os bytes do ficheiro.
%              Este vetor é do tipo double (sem optimização!).
%
function  b = file2bit( filename )

% Obter o vetor.
x = file2vector( filename );

% Converter para o vetor de bits.
k = 1;
for i=1 : length(x)
    b(k:k+7) = bitget( x(i), 8:-1:1 );
    k = k + 8;
end
    
return;


%
%
% file2vector.m
% Funçao que lê o conteúdo de um ficheiro e o coloca num vetor.
%
% Recebe:		filename    - nome do ficheiro.
% Retorna:      y           - vetor com o conteudo do ficheiro.             

function y = file2vector( filename )

% Open file.
fid = fopen( filename, 'rb' );

% Check descriptor.
if -1==fid
    error( sprintf('Error opening file %s for reading',filename) );
end

% Read entire file to a vetor.
y = fread( fid, Inf, 'uchar' );

% Close file.
fclose( fid );

return;


