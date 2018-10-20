% HPF and LPF Window FIRs

% Design a 34th-order FIR highpass filter to attenuate the components of the signal below Fs/4.
% Use a cutoff frequency of 0.48 and a Chebyshev window with 30 dB of ripple.
% Use the chirp signal as input that has most of its power above Fs/4, or half the Nyquist frequency. The sample rate is 8192 Hz.

clear all
close all

load chirp
t = (0:length(y)-1)/Fs;
bhi = fir1(34,0.48,'high',chebwin(35,30));
outhi = filter(bhi,1,y);
subplot(3,1,1)
plot(t,y)
title('Original Chirp Signal')
ys = ylim;
subplot(3,1,2)
plot(t,outhi)
title('Highpass Window FIR Filtered Signal')
xlabel('Time (s)')
ylim(ys)

% Design a lowpass filter with the same specifications.
blo = fir1(34,0.48,'low',chebwin(35,30));
outlo = filter(blo,1,y);
subplot(3,1,3)
plot(t,outlo)
title('Lowpass Window FIR Filtered Signal')
xlabel('Time (s)')
ylim(ys)
figure
subplot(2,1,1)
freqz(bhi,1)
title('High Pass Window FIR FIlter')
figure
subplot(2,1,2)
freqz(blo,1)
title('Low Pass Window FIR FIlter')