% Freq Sampling HPF and LPF FIR

clear all
close all

load chirp
y = y + 0.25*(rand(size(y))-0.5);

% Design a 34th-order FIR highpass filter to attenuate the components of the signal below ${\tt Fs}/4$. Specify a cutoff frequency of 0.48. Visualize the frequency response of the filter.

f = [0 0.48 0.48 1];
mhi = [0 0 1 1];
bhi = fir2(34,f,mhi);

% Filter chirp

outhi = filter(bhi,1,y);
t = (0:length(y)-1)/Fs;

subplot(3,1,1)
plot(t,y)
title('Original Chirp Signal')
ylim([-1.2 1.2])

subplot(3,1,2)
plot(t,outhi)
title('Higpass Frequency Sampling FIR Filtered Signal')
xlabel('Time (s)')
ylim([-1.2 1.2])

% Change the filter from highpass to lowpass. Use the same order and cutoff

mlo = [1 1 0 0];
blo = fir2(34,f,mlo);
outlo = filter(blo,1,y);

subplot(3,1,3)
plot(t,outlo)
title('Lowpass Frequency Sampling FIR Filtered Signal')
xlabel('Time (s)')
ylim([-1.2 1.2])

figure
subplot(2,1,1)
freqz(bhi,1)
title('High Pass Freq Sampling FIR')
figure
subplot(2,1,2)
freqz(blo,1)
title('Low Pass Freq Sampling FIR')