clear all;
close all;
clc; 

% AD9162 DAC used for manipulating carrier
% http://www.analog.com/en/analog-dialogue/articles/new-rf-dac-broadens-sdr-horizon.html
% http://www.analog.com/media/en/technical-documentation/data-sheets/AD9161-9162.pdf

% Define parameters
Fs = 3.2E6;                 % samples per second
StopTime = 0.005;           % seconds
Ac = 2^5;                   % Amplitude of carrier
Fc = 10000;                 % Frequency of Carrier

Ax = 2^1;                     % Amplitude of x(t)
Fx = 2000;                  % Frequency of x(t)

dt = 1/Fs;                  % seconds per sample

t = (0:dt:StopTime-dt)';    % seconds

NumTaps =2500;

% Generate x(t)
X = Ax*sin(2*pi*Fx*t);
X8 = fp8(Ax*sin(2*pi*Fx*t));
X16 = fp16(Ax*sin(2*pi*Fx*t));

%% Generate LO
C = Ac*sin(2*pi*Fc*t);
C8 = fp8(Ac*sin(2*pi*Fc*t));
C16 = fp16(Ac*sin(2*pi*Fc*t));

%% Multiply with LO
Y = X .* C;

Y8 = zeros(size(Y));
Y16 = zeros(size(Y));

Y16 = fp16(Y);

%for idx = (1:numel(X))
%    Y8(idx) = mtimes(X8(idx), C8(idx));
%end
%Y16 = arrayfun(mtimes(), X16, C16);

%for idx = 1:numel(X)
%    Y16(idx) = mtimes(X16(idx), C16(idx));
%end

%% Multiply with LO to get back to X(t)
O =  Y .* C;
O8 = zeros(size(O));
O16 = zeros(size(O));
O16 = fp16(O);
O16 = double(O16);
%for idx = 1:numel(X)
%    O8(idx) = mtimes(Y8(idx), X8(idx));
%end



%for idx = 1:numel(X)
%    O16(idx) = mtimes(Y16(idx), X16(idx));
%end

%% Pass through LPF
B = 1/NumTaps*ones(NumTaps,1);
out = filter(B,1,O);
out8 = filter(B,1,O8);
out16 = filter(B,1,O16);

plotCarriers()

%% Plots for comparison - Carriers
    figure(1)
    subplot(3,1,1)
    plot(t, C)
    title('Carrier versus Time');
    
    subplot(3,1,2)
    plot(t, double(C8))
    title('C8');

    subplot(3,1,3);
    plot(t, double(C16))
    title('C16');


%% Plots for comparison - full precision

    title('Modulation at double precision');
    figure(1)
    subplot(4,1,1)
    plot(t, C)
    title('Carrier versus Time');

    subplot(4,1,2)
    plot(t, X)
    title('Data versus Time');

    subplot(4,1,3);
    plot(t, Y)
    title('Modulated versus Time');

    subplot(4,1,4);
    plot(t, out)
    title('Recovered versus Time');

%% Plots for comparison - 16 bits
    C16 = double(C16);
    X16 = double(X16);
    Y16 = double(Y16);
    out16 = double(out16);
    figure(2)

    subplot(4,1,1)
    plot(t, C16)
    title('Modulation with whole chain at 16 bits');

    subplot(4,1,2)
    plot(t, X16)
    title('Data versus Time');

    subplot(4,1,3);
    plot(t, Y16)
    title('Modulated versus Time');

    subplot(4,1,4);
    plot(t, out16)
    title('Recovered versus Time');
