% Set the coefficients of the regular FIR filter as a sequence of scaled 1's. 
% The scaling factor is 1/|filterLength|.
% Set its coefficients to 1/40. Set a sliding window of length 40 to compute the moving average. 
% Both filters have the same coefficients. The input is Gaussian white noise with a mean of 0 and a standard deviation of 1.

% MA filter
clear all;
fir_filter = dsp.FIRFilter('Numerator',ones(1,40)/40);
mvgAvg_filter = dsp.MovingAverage(40);
input = randn(1024,1);
fir_numerator = fir_filter(input);
mvgAvg_numerator = mvgAvg_filter(input);
% FIR so denomoinators of both filters is set to 1's below
h_ma = fvtool(fir_numerator,1,mvgAvg_numerator,1);
legend(h_ma,'FIR - with noise','Moving Average - with noise');

% For comparison, view the frequency response of the filter without noise.
h_ma=fvtool(fir_filter);
legend(h_ma,'FIR - no noise');

%h_ma.Analysis = 'phase';

% FIR filter
% To realize an ideal FIR filter, change the filter coefficients to a vector that is not a sequence of scaled 1s. 
% The frequency response of the filter changes and tends to move closer to the ideal filter response.
% Design the filter coefficients based on predefined filter specifications. 
% For example, design an equiripple FIR filter with a normalized cutoff frequency of 0.1, a passband ripple of 0.5, and a stopband attenuation of 40 dB. 
% Use fdesign.lowpass to define the filter specifications and the design method to design the filter.
FIReq = fdesign.lowpass('N,Fc,Ap,Ast',40,0.1,0.5,40);
filterCoeff = design(FIReq,'equiripple','SystemObject',true);
h_fir=fvtool(filterCoeff)
dim = [.6 .5 .3 .3];
str = 'Equiripple FIR - no noise';
annotation('textbox',dim,'String',str,'FitBoxToText','on');
%h_fir.Analysis = 'phase';
