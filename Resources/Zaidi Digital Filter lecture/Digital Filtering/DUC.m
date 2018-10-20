% A DUC is a digital circuit which converts a digital baseband signal to a passband signal. 
% The input baseband signal is sampled at a relatively low sampling rate, typically the digital modulation symbol rate. 
% The baseband signal is filtered and converted to a higher sampling rate before modulating a direct digitally synthesized (DDS) 
% carrier frequency.

% The input signals are passed through three filtering stages. Each stage first filters the signals with a lowpass interpolating filter 
% and then performs a sampling rate change. The DUC in this example is a cascade of two FIR Interpolation Filters and one 
% CIC Interpolation Filter. The first FIR Interpolation Filter is a pulse shaping FIR filter that increases the sampling rate by 2 and 
% performs transmitter Nyquist pulse shaping. The second FIR Interpolation Filter is a compensation FIR filter that increases the sampling 
% rate by 2 and compensates for the distortion of the following CIC filter. The CIC Interpolation Filter increases the sampling rate by 32.

% The filters are implemented in fixed-point mode. The input/output word length and fraction length are specified. 
% The internal settings of the first two filters are specified, while the internal settings of the CIC filter are calculated automatically 
% to preserve full precision.

% Create Pulse Shaping FIR Filter
% Create a 32-tap FIR Interpolator with interpolation factor of 2.

clear all
close all

pulseShapingFIR = dsp.FIRInterpolator;
pulseShapingFIR.InterpolationFactor = 2;
pulseShapingFIR.Numerator = [...
     0.0007    0.0021   -0.0002   -0.0025   -0.0027    0.0013    0.0049    0.0032 ...
    -0.0034   -0.0074   -0.0031    0.0060    0.0099    0.0029   -0.0089   -0.0129 ...
    -0.0032    0.0124    0.0177    0.0040   -0.0182   -0.0255   -0.0047    0.0287 ...
     0.0390    0.0049   -0.0509   -0.0699   -0.0046    0.1349    0.2776    0.3378 ...
     0.2776    0.1349   -0.0046   -0.0699   -0.0509    0.0049    0.0390    0.0287 ...
    -0.0047   -0.0255   -0.0182    0.0040    0.0177    0.0124   -0.0032   -0.0129 ...
    -0.0089    0.0029    0.0099    0.0060   -0.0031   -0.0074   -0.0034    0.0032 ...
     0.0049    0.0013   -0.0027   -0.0025   -0.0002    0.0021    0.0007 ];
 
% Create Compensation Fir Filter
% Create an 11-tap FIR Interpolator with interpolation factor of 2.

compensationFIR = dsp.FIRInterpolator;
compensationFIR.InterpolationFactor = 2;
compensationFIR.Numerator = [...
    -0.0007   -0.0009    0.0039    0.0120    0.0063   -0.0267   -0.0592   -0.0237 ...
     0.1147    0.2895    0.3701    0.2895    0.1147   -0.0237   -0.0592   -0.0267 ...
     0.0063    0.0120    0.0039   -0.0009   -0.0007];
 
% Create CIC Interpolating Filter
% Create a 5-stage CIC Interpolator with interpolation factor of 32.

CICFilter = dsp.CICInterpolator;
CICFilter.InterpolationFactor = 32;
CICFilter.NumSections = 5;

% Cascade of the Filters
% Create a cascade filter including the above three filters. Check the frequency response of the cascade filter.

DUpC = dsp.FilterCascade(pulseShapingFIR, compensationFIR, CICFilter);
fvtool(DUpC);