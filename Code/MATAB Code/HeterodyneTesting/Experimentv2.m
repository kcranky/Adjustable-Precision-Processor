clear all;
close all;
clc; 

format long g

% AD9162 DAC used for manipulating carrier
% http://www.analog.com/en/analog-dialogue/articles/new-rf-dac-broadens-sdr-horizon.html
% http://www.analog.com/media/en/technical-documentation/data-sheets/AD9161-9162.pdf

% Define parameters
Fs = 250E3;                % samples per second: 
StopTime = 0.0025;         % seconds
Ac = 2^1;                  % Amplitude of carrier
Fc = 20E3;                 % Frequency of Carrier

Ax = 2^1;                  % Amplitude of x(t)
Fx = 2000;                 % Frequency of x(t)

dt = 1/Fs;                  % seconds per sample
t = (0:dt:StopTime-dt)';    % seconds

NumTaps =Fc/2;

% Generate x(t)
X = Ax*sin(2*pi*Fx*t);
X8 = fp8(Ax*sin(2*pi*Fx*t));
X16 = fp16(Ax*sin(2*pi*Fx*t));
X32 = single(Ax*sin(2*pi*Fx*t));


%% Generate LO
C = Ac*sin(2*pi*Fc*t);
C8 = fp8(Ac*sin(2*pi*Fc*t));
C16 = fp16(Ac*sin(2*pi*Fc*t));
C32 = single(Ac*sin(2*pi*Fc*t));

%C = long(C)

save('MyMatrix.txt', 'C', '-ascii', '-tabs')

%% Multiply with LO
Y = X .* C;
Y8 = fp8(double(X8) .* double(C8));
Y16 = fp8(double(X16) .* double(C16));
Y32 = X32 .* C32;


%% Multiply with LO to get back to X(t)
O =  Y .* C;
O8 =  fp8(double(Y8) .* double(C8));
O16 =  fp16(double(Y16) .* double(C16));
O32 = Y32 .* C32;

%% Pass through LPF
B = 1/NumTaps*ones(NumTaps,1);
out = filter(B,1,O);
out8 = filter(B,1,double(O8));
out16 = filter(B,1,double(O16));
out32 = filter(B,1,double(O32));


%% Plots for comparison - Carriers
%    figure(1)
%    subplot(3,1,1)
%    plot(t, C)
%    title('Carrier versus Time');
    
%    subplot(3,1,2)
%    plot(t, double(fp8(C)));
%    title('Carrier @ 8 bit FP');

%    subplot(3,1,3);
%    plot(t, double(fp16(C)));
%    title('Carrier @ 16 bit FP');





out = (out .* 250);
sub = max(out);
out = out - sub/2;

out8 = (out8 .* 250);
sub8 = max(out8);
out8 = out8 - sub8/2;

out16 = (out16 .* 250);
sub16 = max(out16);
out16 = out16 - sub16/2;

out32 = (out32 .* 250);
sub32 = max(out32);
out32 = out32 - sub32/2;


hold on
plot(out, '-s')
plot(double(fp8(out8)), '-o')
plot(double(fp16(out16)), '-*')
plot(double(single(out32)), '-^')
lgd = legend("64 bits", "32 bits", "16 bits", "8 bits")
lgd.FontSize = 14;
xl = xlabel("Sample");
yl = ylabel("Amplitude");
xl.FontSize =  14;
yl.FontSize = 14;

% corrcoef(out, out32)
% corrcoef(out, out8)
% corrcoef(out, out16)
% maxxs = [double(max(X8)) double(max(X16)) double(max(X32)) double(max(X))]
% maxys = [double(max(Y8)) double(max(Y16)) double(max(Y32)) max(Y)]
% maxos = [double(max(O8)) double(max(O16)) double(max(O32)) max(O)]
% maxouts = [max(out8) max(out16) max(out32) max(out)]
% 

% %% Plots for comparison - full precision
% figure(1)
%    subplot(4,1,1)
%    plot(t, C)
%    title('Carrier versus Time');
% 
%    subplot(4,1,2)
%    plot(t, X)
%    title('Data versus Time');
% 
%    subplot(4,1,3);
%    plot(t, Y)
%    title('Modulated signal versus Time');
% 
%    subplot(4,1,4);
%    plot(t, out)
%    title('Recovered versus Time');

 %% Visual comparison
% figure(2)
% plot(X)                                     %Plot signal s1
% hold on
% plot(out, 'r');   %Delay signal s2 by delay in order to align them
% hold off
% lgd = legend("Original Signal", "Recovered Signal");
% lgd.FontSize = 14;
% xl = xlabel("Sample number");
% yl = ylabel("Amplitude");
% xl.FontSize =  14;
% yl.FontSize = 14;

%% HetFullScaleShift
corrcoef(X', out')
X1=xcorr(X,out);   %compute cross-correlation between vectors s1 and s2
[m,d]=max(X1);      %find value and index of maximum value of cross-correlation amplitude
delay=d-max(length(X),length(out));   %shift index d, as length(X1)=2*N-1; where N is the length of the signals
plot(X, '-s')                                     %Plot signal s1
hold on
plot([delay+1:length(out)+delay],out, 'r');   %Delay signal s2 by delay in order to align them
hold off
corrcoef(X, [delay+1:length(out)+delay])
xl = xlabel("Sample number");
yl = ylabel("Amplitude");
xl.FontSize =  18;
yl.FontSize = 18;
lgd = legend("Original Signal", "Recovered Signal")
lgd.FontSize  =14;


 