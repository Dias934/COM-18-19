function y=record_audio_to_file(Fs,d,name)
    recordObject=audiorecorder(Fs,8,1);
    recordblocking(recordObject,d);
    play(recordObject);
    y=getaudiodata(recordObject);
    audiowrite(strcat(name,'.WAV'),y,Fs);
    audiowrite(strcat(name,'.FLAC'),y,Fs);
end

