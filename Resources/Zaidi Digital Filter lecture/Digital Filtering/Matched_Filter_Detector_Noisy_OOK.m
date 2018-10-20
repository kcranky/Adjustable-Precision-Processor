% Exercise 14.2-3
% Implement a matched filter detector for a noisy OOK signal
% A “1” will be a pulse consisting of 3? one Hz sin waves and a “0”
% consists of zero volts
% The transmitted message will be 1011
% Sampling period, Ts will be 1/50 seconds
% Bit duration, Tb=150 second

% Initialize variables
clear all
close all
for t=1:900
j(t)=t;
x(t)=0; % Noiseless signal
h1(t)=0; % Impulse response function of matched filter
y(t)=0; % Noisy signal
n(t)=0; % Noise
znoisy(t)=0; % Matched fitler output with noisy input
znoiseless(t)=0;% Matched fitler output with noisless input
end;
Ts=1/50; % Sampling period ?`1/50 seconds
Tb=150; % Bit duration ? 150 seconds
% Create the impulse response function, h1(t) for the matched filter
% that consists of three 1 Hz sine waves
for t=1:Tb
h1(t)=sin(2*pi*t*Ts);
end;
% Modulate message sequence 1011 onto a 1 Hz OOK carrier
% digits occur at t?150,t?300,t?450 and t?600
% OOK pulses are spaced Tb apart.
for t=Tb:2*Tb
x(t)=sin(2*3.1415*(t)*Ts); % “1”
end;
for t=2*Tb:3*Tb
x(t)=0; % “0”
end
for t=3*Tb:4*Tb % “1”
x(t)=sin(2*3.1415*(t)*Ts);
end;
for t=4*Tb:5*Tb % “1”
x(t)=sin(2*3.1415*(t)*Ts);
end;
% Add gaussian noise to the OOK signal
for t=1:900
n(t)=randn;
y(t)=x(t) + n(t);
end;
% Filter noisy and noiseless signals using matched filter
znoisy=conv(h1,y);
znoiseless=conv(h1,x);
% Normalize matched filter outputs
znoisy=znoisy/max(znoisy);
znoiseless=znoiseless/max(znoiseless);
% Plot output/input of matched filters with and without noisy
% inputs.
subplot(4,1,1)
plot (j, x+15)
title('OOK signal w/o noise');
subplot(4,1,2)
plot (j, znoiseless(1:900)+10)
title('Noisy OOK signal');
subplot(4,1,3)
plot (j, y+5)
title('Butterworth LPF filtered OOK signal');
subplot(4,1,4)
plot (j, znoisy(1:900))
title('Matched filtered OOK signal');
%plot(j, x+15, j, znoiseless(1:900)+10, j, y+5, j, znoisy(1:900))
