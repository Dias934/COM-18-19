clear;
clc;

%b)
%(i)
interval=[-30 30]; %in ms
t=interval(1):1/8000:interval(2);
a=[5;10];
s=[cos(2*pi*100*t);cos(2*pi*300*t)];
vec=signal_mixer(a,s,length(a),t);
analysis(vec,0);
%amplitude minima -15; máxima 15; média 0;
%largura de banda 300-100=200hz; frequência fundamental 100 hz

%(ii)
interval=[-30 30]; %in ms
t=interval(1):1/8000:interval(2);
a=[2;4;10];
s=[cos(zeros(1,length(t)));cos(2*pi*100*t);cos(2*pi*250*t)];
vec=signal_mixer(a,s,length(a),t);
analysis(vec,0);
%amplitude minima -12; máxima 16; média 2;
%largura de banda 250hz aproximadamente; frequência fundamental 50 hz

%c)
vec=signal_mixer_sinc(5,5,0.5,500);
analysis(vec,0);
vec=signal_mixer_sinc(3,15,0.25,1000);
analysis(vec,0);

%d)
mobile_ring_tones();