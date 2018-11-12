function mobile_ring_tones()
    name='tone';
    N=3;
    Fs=8000;
    duration=3;
    a=[1;1;1]; %pode-se alterar o volume (amplitude) das gravações
    s=zeros(N,duration*Fs);
    for i=1:N
        disp('recoding');
        s(i,:)=record_audio_to_file(Fs,duration,num2str(i));
        disp('done');
    end
    t = 0:seconds(1/Fs):seconds(duration);
    t = t(1:end-1);
    vec=signal_mixer(a,s,N,t);
    sound(vec,Fs);
    audiowrite(strcat(name,'.WAV'),vec,Fs);
    audiowrite(strcat(name,'.FLAC'),vec,Fs);
end

