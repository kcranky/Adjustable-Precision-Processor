% Compare a normal raised cosine filter with a square-root cosine filter. An ideal (infinite-length) 
% normal raised cosine pulse-shaping filter is equivalent to two ideal square-root raised cosine filters
% in cascade. Thus, the impulse response of an FIR normal filter should resemble that of a square-root 
% filter convolved with itself.

% Create a normal raised cosine filter with rolloff 0.25. Specify that this filter span 4 symbols with 3
% samples per symbol.

h = rcosdesign(0.25,6,4);
mx = max(abs(h-rcosdesign(0.25,6,4,'sqrt')))
mx = 0
fvtool(h,'Analysis','impulse')

rf = 0.25;
span = 4;
sps = 3;

h1 = rcosdesign(rf,span,sps,'normal');
fvtool(h1,'impulse')

% The normal filter has zero crossings at integer multiples of sps. It thus satisfies Nyquist's 
% criterion for zero intersymbol interference. The square-root filter, however, does not:

h2 = rcosdesign(rf,span,sps,'sqrt');
fvtool(h2,'impulse')

% Convolve the square-root filter with itself. Truncate the impulse response outward from the maximum 
% so it has the same length as h1. Normalize the response using the maximum. Then, compare the convolved
% square-root filter to the normal filter.

h3 = conv(h2,h2);
p2 = ceil(length(h3)/2);
m2 = ceil(p2-length(h1)/2);
M2 = floor(p2+length(h1)/2);
ct = h3(m2:M2);

figure
stem([h1/max(abs(h1));ct/max(abs(ct))]','filled')
xlabel('Samples')
ylabel('Normalized amplitude')
legend('h1','h2 * h2')

% The convolved response does not coincide with the normal filter because of its finite length. 
% Increase span to obtain closer agreement between the responses and better compliance with the Nyquist criterion.

span = 6;
h1 = rcosdesign(rf,span,sps,'normal');
fvtool(h1,'impulse')
h2 = rcosdesign(rf,span,sps,'sqrt');
fvtool(h2,'impulse')
h3 = conv(h2,h2);
p2 = ceil(length(h3)/2);
m2 = ceil(p2-length(h1)/2);
M2 = floor(p2+length(h1)/2);
ct = h3(m2:M2);

figure
stem([h1/max(abs(h1));ct/max(abs(ct))]','filled')
xlabel('Samples')
ylabel('Normalized amplitude when span inceased')
legend('h1','h2 * h2')