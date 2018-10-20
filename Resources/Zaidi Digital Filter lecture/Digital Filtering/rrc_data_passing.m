% This example shows how to pass a signal through a square-root, raised cosine filter.

% Specify the filter parameters.

rolloff = 0.25;     % Rolloff factor
span = 6;           % Filter span in symbols
sps = 4;            % Samples per symbol

% Generate the square-root, raised cosine filter coefficients.

b = rcosdesign(rolloff, span, sps);

% Create a vector of bipolar data.

d = 2*randi([0 1], 100, 1) - 1;
% Upsample and filter the data for pulse shaping.

x = upfirdn(d, b, sps);
hold on 
plot(x,'--mo')

% Add noise.

r = x + randn(size(x))*0.01;

% Filter and downsample the received signal for matched filtering.

y = upfirdn(r, b, 1, sps);
plot(y,':bs')

hold off