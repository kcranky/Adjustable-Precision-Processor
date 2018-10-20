% Generate the raw sin waves:
Fs = 100;         % samples per second
StopTime = 1;   % seconds
Ac = 2^8;             % Amplitude of carrier
Fc = 1;         % Frequency of Carrier


% Create Sine wave
% Credits to Rick Rosson
% https://www.mathworks.com/matlabcentral/answers/36428-sine-wave-plot#answer_45572
dt = 1/Fs;                   % seconds per sample
t = (0:dt:StopTime-dt)';     % seconds

% Sine wave:
C = fp16(Ac*sin(2*pi*Fc*t));

% Plot the signal versus time:
stem(t,C, '-s');
xlabel('time (in mS)');
title('Carrier versus Time');
zoom xon;

