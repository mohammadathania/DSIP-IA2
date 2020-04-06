load handel.mat
filename = 'handel.wav';
audiowrite(filename,y,Fs);
clear y Fs
[y,Fs] = audioread('handel.wav');
sound(y,Fs);
y = y(:,1);
dt = 1/Fs;
t = 0:dt:(length(y)*dt)-dt;
plot(t,y); xlabel('Seconds'); ylabel('Amplitude');
