clear all;

% Create a 2-by-15 matrix of random input data.
rng default  %initialize random number generator
x = rand(2,15);

% Define the numerator and denominator coefficients for the rational transfer function.
b = 1;
a = [1 -0.2];

% Apply the transfer function along the second dimension of x and return the 1-D digital filter of each row. 
y = filter(b,a,x,[],2);
t = 0:length(x)-1;  %index vector
plot(t,x(1,:))
hold on
plot(t,y(1,:))
legend('Input Data','Filtered Data')
title('First Row')

% Plot the second row of input data against the filtered data.
figure
plot(t,x(2,:))
hold on
plot(t,y(2,:))
legend('Input Data','Filtered Data')
title('Second Row')