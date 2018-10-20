% Design a Square-Root Raised Cosine Filter
% Specify a rolloff factor of 0.25. Truncate the filter to 6 symbols and represent each symbol with 4 
% samples. Verify that 'sqrt' is the default value of the shape parameter.

h = rcosdesign(0.25,6,4);
mx = max(abs(h-rcosdesign(0.25,6,4,'sqrt')))
mx = 0
fvtool(h,'Analysis','impulse')

