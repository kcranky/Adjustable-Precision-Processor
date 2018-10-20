% Compare the performance of a matched filter versus a 1st order
% Butterworth to process a noisy sinusoid.

clear
for t=1:500
j(t)=t;
c(t)=0;
n(t)=0;
v(t)=0;
hlpf(t)=0;
hopt(t)=0;
y(t)=0;
n(t)=0;
end;
Ts=1/100; % set the sample period to 1/100 seconds
% generate impulse response function for first order Butterworth
% filter
for t=1:50
hlpf(t)=2*pi*exp(-t*2*pi*Ts);
end;
% generate impulse response function for optimum filter
for t=1:50
hopt(t)=sin(2*pi*t*Ts);
end;
% generate a sinusoidal signal
for t=1:500
p(t)=sin(2*3.1415*t*Ts);
end;
% add gaussian white noise to sinusoidal signal
for t=1:500
n(t)=randn;
y(t)=p(t)+n(t); % Add gaussian noise to the signal
end;
% Filter noisy signal with first order Butterworth LPF,
% then normalize the amplitude
c=conv(hlpf,y);
c=c/max(c);
% Filter noisy signal using matched filter,
% then normalize the amplitude
v=conv(hopt,y);
v=v/max(v);
% Plot signal w/o noise, noisy signal, Butterworth filtered signal
% and optimum filtered signal
subplot(4,1,1)
plot (j, p+15)
title('Signal w/o noise');
subplot(4,1,2)
plot (j, y+10)
title('Noisy signal');
subplot(4,1,3)
plot (j, c (1:500)+5)
title('Butterworth LPF filtered signal');
subplot(4,1,4)
plot (j, v (1:500))
title('Matched filtered signal');
%plot (j, p+15, j, y+10, j, c (1:500)+5, j, v (1:500))