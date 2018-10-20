% MOVING AVERAGE FIR FILTER
% Keegan Crankshaw
% EEE4022S 
% create a sine wave
% add random noise
% pass noisy sine wave through filter
% compare results

% Parameters
%digits(4)                   % set the precision MATLAB deafulats to 16
%disp(digits);
Fs = 8000;                   % samples per second
StopTime = 0.05;             % seconds
Fc = 60;                     % hertz
NumTaps = 40;                % number of filter taps


% Create Sine wave
% Credits to Rick Rosson
% https://www.mathworks.com/matlabcentral/answers/36428-sine-wave-plot#answer_45572
dt = 1/Fs;                   % seconds per sample
t = (0:dt:StopTime-dt)';     % seconds

% Sine wave:
x = cos(2*pi*Fc*t);

% Add noise to sine wave
y = awgn(x,15,'measured');

% Create Filter and pass signal through
B = 1/NumTaps*ones(NumTaps,1);
out = filter(B,1,y);

% Compare original and reconstructed signal
plot(t, [x y out])
legend('original', 'unfiltered', 'filtered');

% Get the frequency response
%[H, W] = freqz(B, 1)

%b = cast(B,'uint16');
%[h, w] = freqz(b, 1)
