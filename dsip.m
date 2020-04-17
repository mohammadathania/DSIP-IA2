load handel.mat
filename = 'handel.wav';
audiowrite(filename,y,Fs,'BitsPerSample',8,...
'Comment','This is my new audio file.');
clear y Fs
[y,Fs] = audioread('handel.wav');
y1 = uint8( (y + 1)/2 * 255 );
%sound(y,Fs);
y1 = y1(:,1);
dt = 1/Fs;
t = 0:dt:(length(y)*dt)-dt;
plot(t,y1); xlabel('Seconds'); ylabel('Amplitude');
%variables using to find the probability
cnt=1;
sigma=0;
whos y1;
