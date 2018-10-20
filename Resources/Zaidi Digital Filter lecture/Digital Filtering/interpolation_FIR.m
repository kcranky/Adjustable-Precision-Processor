% Design a digital interpolation filter to upsample a signal by seven, using the bandlimited method. 
% Specify a "bandlimitedness" factor of 0.5 and use  samples in the interpolation.

upfac = 7;
alpha = 0.5;
h1 = intfilt(upfac,2,alpha);
% The filter works best when the original signal is bandlimited to alpha times the Nyquist frequency. 
% Create a bandlimited noise signal by generating 200 Gaussian random numbers and filtering the sequence 
% with a 40th-order FIR lowpass filter. Reset the random number generator for reproducible results.

lowp = fir1(40,alpha);

rng('default')
x = filter(lowp,1,randn(200,1));
% Increase the sample rate of the signal by inserting zeros between each pair of samples of x.

xr = upsample(x,upfac);

% Use the filter function to produce an interpolated signal.

y = filter(h1,1,xr);

% Compensate for the delay introduced by the filter. Plot the original and interpolated signals.

delay = mean(grpdelay(h1));

y(1:delay) = [];

stem(1:upfac:upfac*length(x),x)
hold on
plot(y)

xlim([400 700])

% intfilt also performs Lagrange polynomial interpolation.
% 
% First-order polynomial interpolation is just linear interpolation, which is accomplished with a triangular filter.
% Zeroth-order interpolation is accomplished with a moving average filter and resembles the output of a sample-and-hold display.
% Interpolate the original signal and overlay the result.

h2 = intfilt(upfac,1,'Lagrange');

y2 = filter(h2,1,xr);
y2(1:floor(mean(grpdelay(h2)))) = [];

plot(y2)
hold off

