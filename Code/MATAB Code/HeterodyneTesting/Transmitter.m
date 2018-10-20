% Useful links
% https://www.mathworks.com/help/matlab/matlab_prog/floating-point-numbers.html
% 

clear all;
close all;  

% Parameters
Fs = 3.2E6;                   % samples per second
StopTime = 0.005;             % seconds
Ac = 2;                     % Amplitude of carrier
Fc = 10000;               % Frequency of Carrier
Ad = 2;
Fd = 2000;


% Create Sine wave
% Credits to Rick Rosson
% https://www.mathworks.com/matlabcentral/answers/36428-sine-wave-plot#answer_45572
dt = 1/Fs;                   % seconds per sample
t = (0:dt:StopTime-dt)';     % seconds

% Sine wave:
C = Ac*sin(2*pi*Fc*t);

% Plot the signal versus time:
subplot(4,1,1);
plot(t,C);
xlabel('time (in mS)');
title('Carrier versus Time');
zoom xon;

% Generate a data signal
D = Ad*sin(2*pi*Fd*t);
subplot(4,1,2);
plot(t,D);
xlabel('time (in mS)');
title('Data versus Time');
zoom xon;


% Modulate with a carrier)
O = C.*D;
%subplot(4,1,3);
%plot(t,O);
%xlabel('time (in mS)');
%title('Modulated Signal versus Time');
%zoom xon;

% Pass though a DAC

% Add noise to signal
% Add noise to sine wave
y = awgn(O,20,'measured');
subplot(4,1,3);
plot(t,y);
xlabel('time (in mS)');
title('Noisy Modulated Signal versus Time');
zoom xon;

% Recover Data
R = C.*O;
subplot(4,1,4);
plot(t,R);
xlabel('time (in mS)');
title('Recovered Signal versus Time');
zoom xon;

% Pass through LPF
X = fft(R);
figure
plot(X)
