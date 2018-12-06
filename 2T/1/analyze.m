function analyze(s,t)
    figure;
    plot(t,s);
    grid on;
    title('Sinal');
    
    Fs=1000;
    CK = fftshift( fft(s) );  
    CK = CK / length(s);
    freq = ((0 : 1 : length(s)-1)*Fs / ( length(s) )) - Fs/2;
    figure;
    plot(freq,abs(CK));
    grid on;
    title('Espectro Bilateral de Amplitude');
    
    figure;
    specgram( s , 256, Fs); 
    grid on; 
    title('Espectrograma'); 
end

