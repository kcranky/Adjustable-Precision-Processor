% Testing the effects of bitwidth in matlab representations
% MATLAB uses 64 bits (double) by default, and has support for single (32)
% Library for half: https://www.mathworks.com/matlabcentral/fileexchange/23173-ieee-754r-half-precision-floating-point-converter

% Define some numers:
numsDouble = [12.35 -5.25 589 0.8 8950 82 -0.09 0.1];
class(numsDouble(1));

% Convert to single
numsSingle = arrayfun(@(x) single(x), numsDouble);
class(numsSingle(1));

numsHalf = halfprecision(numsDouble);

halfprecision(numsHalf, 'disp');
