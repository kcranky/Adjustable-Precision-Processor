% Create a 1-by-100 row vector of sinusoidal data that is corrupted by random noise.
clear all;
t = linspace(-pi,pi,100);
rng default  %initialize random number generator
x = sin(t) + 0.25*rand(size(t));
% For a window size of 5, compute the numerator and denominator coefficients for the rational transfer function.
windowSize = 5; 
b = (1/windowSize)*ones(1,windowSize);
a = 1;
y = filter(b,a,x);
plot(t,x)
hold on
plot(t,y)
legend('Input Data','Filtered Data')