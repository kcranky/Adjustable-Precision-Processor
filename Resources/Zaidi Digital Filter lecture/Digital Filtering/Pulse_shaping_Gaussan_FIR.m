% The FIR Gaussian filter using the gaussdesign function. The inputs to this function are the 3-dB 
% bandwidth-symbol time product, the number of symbol periods between the start and end of the filter 
% impulse response, i.e. filter span in symbols, and the oversampling factor (i.e. the number of samples
% per symbol).

% The oversampling factor (OVSF) determines the sampling frequency and the filter length and hence, plays a 
% significant role in the Gaussian FIR filter design. The approximation errors in the design can be reduced 
% with an appropriate choice of oversampling factor. We illustrate this by comparing the Gaussian FIR filters 
% designed with two different oversampling factors.

% First, we will consider an oversampling factor of 16 to design the discrete Gaussian filter.

close all
clear all

Ts   = 1e-6; % Symbol time (sec)
span = 6;    % Filter span in symbols

a = Ts*[.5, .75, 1, 2];
B = sqrt(log(2)/2)./(a);

f = linspace(0,32e6,10000)';
Hideal = zeros(length(f),length(a));
for k = 1:length(a)
  Hideal(:,k) = exp(-a(k)^2*f.^2);
end

ovsf = 16; % Oversampling factor (samples/symbol)
h = zeros(97,4);
iz = zeros(97,4);
for k = 1:length(a)
  BT = B(k)*Ts;
  h(:,k) = gaussdesign(BT,span,ovsf);
  [iz(:,k),t] = impz(h(:,k));
end
figure('Color','white')
t = (t-t(end)/2)/Ts;
stem(t,iz)
title({'Impulse response of the Gaussian FIR filter for ';...
  'various bandwidths, OVSF=16'});
xlabel('Normalized time (t/Ts)')
ylabel('Amplitude')
legend(sprintf('BT = %g*Ts',a(1)/Ts),sprintf('BT = %g*Ts',a(2)/Ts),...
  sprintf('BT = %g*Ts',a(3)/Ts),sprintf('BT = %g*Ts',a(4)/Ts))
grid on;

% Calculate the frequency response for the Gaussian FIR filter with an 
% oversampling factor of 16 and we will compare it with the ideal frequency response 
% (i.e. frequency response of a continuous-time Gaussian filter).

Fs = ovsf/Ts;
hfvt = fvtool(h(:,1),1,h(:,2),1,h(:,3),1,h(:,4),1,...
  'FrequencyRange', 'Specify freq. vector', ...
  'FrequencyVector',f,'Fs',Fs,'Color','white');
titleStr = {['Ideal mag. responses (dashed lines) and corresponding ', ...
  'FIR approximations (solid lines)'] ;' for various values of B, OVSF=16'};
title(titleStr)
legend(hfvt, sprintf('B = %g',B(1)),sprintf('B = %g',B(2)),...
  sprintf('B = %g',B(3)),sprintf('B = %g',B(4)), ...
  'Location','Best')
hold on;
plot(f*Ts,20*log10(Hideal),'--')
axis([0 32 -350 5])
p1 = [0.24 0.32];
p2 = [0.5 0.6];
p3 = [0.5 0.25];
p4 = [0.52 0.7];
p5 = [0.4 0.12];
p6 = [0.4 0.35];
annotation('textarrow',p1,p2,'String','aliasing ')
annotation('textarrow',p1,p3,'String','')
annotation('textarrow',p4,p5,'String','truncation')
annotation('textarrow',p4,p6,'String','')

% Aliasing occurs when the sampling frequency is not greater than the Nyquist frequency. 
% In case of the first two filters, the bandwidth is large enough that the oversampling factor 
% does not separate the spectral replicas enough to avoid aliasing. The amount of aliasing is 
% not very significant however.

% Significance of the Oversampling Factor
% The aliasing and truncation errors vary according to the oversampling factor. If the oversampling factor 
% is reduced, these errors will be more severe, since this reduces the sampling frequency (thereby moving 
% the replicas closer) and also reduces the filter lengths (increasing the error in the FIR approximation).
% 
% For example, if we select an oversampling factor of 4, we will see that all the FIR filters exhibit 
% aliasing errors as the sampling frequency is not large enough to avoid the overlapping of the 
% spectral replicas.

ovsf = 4; % Oversampling factor (samples/symbol)
h = zeros(25,4);
iz = zeros(25,4);
for k = 1:length(a)
  BT = B(k)*Ts;
  h(:,k) = gaussdesign(BT,span,ovsf);
  [iz(:,k),t] = impz(h(:,k));
end
figure('Color','white')
t = (t-t(end)/2)/Ts;
stem(t,iz)
title({'Impulse response of the Gaussian FIR filter'; 'for various bandwidths, OVSF=4'});
xlabel('Normalized time (t/Ts)')
ylabel('Amplitude')
legend(sprintf('BT = %g*Ts',a(1)/Ts),sprintf('BT = %g*Ts',a(2)/Ts),...
  sprintf('BT = %g*Ts',a(3)/Ts),sprintf('BT = %g*Ts',a(4)/Ts))
grid on;

% Frequency Response for FIR Gaussian Filter (oversampling factor=4)
% We will plot and study the frequency response for the Gaussian FIR filter designed with oversampling 
% factor of 4. A smaller oversampling factor means smaller sampling frequency. As a result, this 
% sampling frequency is not enough to avoid the spectral overlap and all the FIR approximation filters 
% exhibit aliasing.

Fs = ovsf/Ts;
hfvt = fvtool(h(:,1),1,h(:,2),1,h(:,3),1,h(:,4),1,...
  'FrequencyRange', 'Specify freq. vector', ...
  'FrequencyVector',f,'Fs',Fs,'Color','white');
titleStr = {['Ideal mag. responses (dashed lines) and corresponding ',...
  'FIR approximations (solid lines)'] ;' for various values of B, OVSF=4'};
title(titleStr)
legend(hfvt, sprintf('B = %g',B(1)),sprintf('B = %g',B(2)),...
  sprintf('B = %g',B(3)),sprintf('B = %g',B(4)), ...
  'Location','Best')
hold on;
plot(f*Ts,20*log10(Hideal),'--')
axis([0 32 -350 5])